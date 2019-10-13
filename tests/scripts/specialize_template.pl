#!/usr/bin/perl
# declutter.pl
# Extracts main function in an LLVM IR file translated from Mcsema,
# Removes the return address section of the function,
# and changes struct.State definitions on the top of the file.

# Output file: {input file name}.mod.ll
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

my $help   = "";
my $file   = "";
my $outdir = "";
my $opcode = "";

## Global consants
my $maxTargetInfoLength = 4;
my $terminatingInstr =
qr/.*\%struct\.State, \%struct.State\* \%0, i64 0, i32 6, i32 13, i32 0, i32 0/;

GetOptions(
    "help"   => \$help,
    "opc:s"  => \$opcode,
    "file:s" => \$file,
) or die("Error in command line arguments\n");

sub usage {
    print("Usage verify_operand_selection.pl --opc <att opcode>\n");
    print("Output: Generates the selection instrunction");
}

if ( $help or $file eq "" ) {
    usage();
    exit(1);
}

# File Open
open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines        = <$fp>;
my $relevantCode = 0;
my @code         = ();

for my $line (@lines) {
#    if ( $relevantCode == 0 and $line !~ m/define/ ) {
#        next;
#    }
#
#    if ( $line =~ m/define.*ctpop/ ) {
#        next;
#    }
#    if ( $line =~ m/define.*main/ ) {
#        last;
#    }
#    $relevantCode = 1;

    push @code, $line;
    if ( $line =~ m/define.*main/ ) {
        last;
    }
}

print @code;
