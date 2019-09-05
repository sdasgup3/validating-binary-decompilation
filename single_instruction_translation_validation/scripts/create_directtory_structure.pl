#!/usr/bin/perl
#
# Usage create_directtory_structure.pl --seed <filename>
# Example: ./create_directtory_structure <...>/<opcode>/seed/<opocde>.s
# Output: Creates the prereq files in the directory level above seed
#
use strict;
use warnings;
use Getopt::Long;
use File::Compare;
use File::Basename;
use File::Temp qw/ tempfile tempdir /;
use Cwd 'abs_path';

my $home = "";

BEGIN {
    my $script_dir1 = dirname(__FILE__);
    my $script_dir2 = "/home/sdasgup3/Github/X86-64-semantics/scripts/";
    unshift @INC, $script_dir1;
    unshift @INC, $script_dir2;
}
use kutils;
use utils;

my $help     = "";
my $seedfile = "";
my $outdir   = "";

GetOptions(
    "help"   => \$help,
    "seed:s" => \$seedfile,
) or die("Error in command line arguments\n");

sub usage {
    print("Usage create_directtory_structure.pl --seed <filename>");
    print(
        "Example: ./create_directtory_structure <...>/<opcode>/seed/<opocde>.s"
    );
    print("Output: Creates the prereq files in the directory level above seed");
}
if ( $help or $seedfile eq "" ) {
    usage();
    exit(1);
}

## Read from seed file
my ( $seeddir, $opcode, $seedext ) = utils::split_filename($seedfile);

open( my $fp, "<", $seedfile ) or die "cannot open: $!";
my @lines = <$fp>;
close $fp;

print("\nProcessing::$opcode::$seeddir/..\n");

my $CFile = "$seeddir/../test.c";
print("C file:$CFile\n");
open( my $cfp, ">", $CFile ) or die "cannot open: $!";
#print $cfp "void leaf() {\n";
print $cfp "void main() {\n";

for my $line (@lines) {
    if ( $line !~ m/target|retq/ ) {
        my $instr = utils::trim($line);
        print $cfp getCFileTemplate($instr);
    }
}

print $cfp "}";
#print $cfp "}\nvoid main() {\n  leaf();\n}";
close $cfp;

my $MakeFile = "$seeddir/../Makefile";
open( my $mfp, ">", $MakeFile ) or die "cannot open: $!";
print("Makefile:$MakeFile\n");
print $mfp getMakeFileTemplate();
close $mfp;

######################## Routines

sub getCFileTemplate {
    my $instr = shift @_;

    my $CFileTemplate = qq(  __asm__("$instr");
);

    return $CFileTemplate;

}

sub getMakeFileTemplate {
    my $MakeFileTemplate = qq(.PHONY: clean
#KPROVE_OPTS="--log-basic --log-cells \"(#initTerm),(#target),(#result),(registers),(memory)\" --log  --state-log --log-success"
KPROVE_OPTS=--log-cells "(\#initTerm),(\#target),(\#result),(registers),(memory)" --log-basic  --state-log --log-success
CLEAN_ASM=\${HOME}/Github/X86-64-semantics/scripts/remove_directives.pl
Mkdir=\@mkdir -p \$(\@D)
SCRIPT_DIR=\${HOME}/Github/X86-64-semantics/scripts
RUN_SH=\${SCRIPT_DIR}/run.pl
OUTDIR=Output

objdump: test
	objdump -d \$< > test.objdump

mcsema: test
	mcsema-disass --disassembler \${HOME}/ida-6.95/idal64 --os linux --arch amd64_avx --output test.cfg --binary \$< --entrypoint main
	mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc -disable_dead_store_elimination -disable_optimizer_O3
#mcsema-lift-4.0 --os linux --arch amd64_avx --cfg test.cfg --output test.bc
	llvm-dis test.bc -o test.ll

assemble: test.c
	gcc -Os \$< -S -o test.s
	\${CLEAN_ASM} -i --file test.s

binary: test.c
	gcc -Os \$< -o test

lprove: test-lspec.k
	mkdir -p \${OUTDIR}
	kprove \$< --directory \${HOME}/Github/llvm-verified-backend/kompiled-defs/llvm/ --smt_prelude /home/sdasgup3/Github/llvm-verified-backend/scripts/prelude.smt2 \${KPROVE_OPTS} 1>Output/test-lspec.out 2>&1

xprove: test-xspec.k
	mkdir -p \${OUTDIR}
	\@echo "KProve instruction semantics"
	\@kprove \$< --directory \${HOME}/Github/X86-64-semantics/semantics --smt_prelude \${HOME}/Github/k/k-distribution/include/z3/basic.smt2 \${KPROVE_OPTS} 1>Output/test-xspec.out 2>&1

kli: test.mod.ll
	mkdir -p \${OUTDIR}
	\${HOME}/Github/llvm-verified-backend/scripts/kli \$< 1> Output/test.lstate 2>&1

xstate: test.s
	mkdir -p \${OUTDIR}
	\@echo ""
	\@echo  "Generate: kstate file "
	\@mkdir -p \${OUTDIR}
	\${RUN_SH} --file \$< --krun --output Output/test-xstate.out

collect:
	\@echo "Collect instruction semantics"
	\@\${SCRIPT_DIR}/collect_instructions_semantics.pl --file test.s

kompile:
	\@echo "Kompile instruction semantics"
	\@\${SCRIPT_DIR}/kompile.pl --backend java

clean:
	rm *.bc *.ll test *.cfg  *.objdump
);

    return $MakeFileTemplate;

}

