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

my $help    = "";
my $opcode  = "";
my $workdir = "";

GetOptions(
    "help"      => \$help,
    "opc:s"     => \$opcode,
    "workdir:s" => \$workdir,
) or die("Error in command line arguments\n");

sub usage {
    print("Usage create_jmp_seed.pl --workdir <path> --opc opcode");
    print("Output: Creates the path/seed/<opcode>.s");
}
if ( $help or $opcode eq "" or $workdir eq "" ) {
    usage();
    exit(1);
}

my $outfile = "$workdir/seed/$opcode.s";
utils::execute("mkdir $workdir/seed");
open( my $fp, ">", $outfile ) or die "cannot open: $!";
print $fp getSeedFileTemplate($opcode);
close($fp);

######################## Routines

sub getSeedFileTemplate {
    my $instr  = shift @_;
    my $opcode = $instr =~ s/(.*)_(.*)/$1/gr;

    my $SeedFileTemplate = qq(.target:
    $opcode .L1
    .L1:
    retq);

    return $SeedFileTemplate;

}
