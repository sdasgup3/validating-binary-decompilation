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
    unshift @INC, $script_dir1;
}
use kutils;
use utils;

my $help = "";
my $file = "";

## Global consants
my $maxTargetInfoLength = 4;
my $terminatingInstr =
qr/.*\%struct\.State, \%struct.State\* \%0, i64 0, i32 6, i32 13, i32 0, i32 0/;

GetOptions(
    "help"   => \$help,
    "file:s" => \$file,
) or die("Error in command line arguments\n");

sub usage {
    print("Usage remove_definitions.pl --file <filename>.ll\n");
}
if ( $help or $file eq "" ) {
    usage();
    exit(1);
}

## Open file to read
open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines = <$fp>;
close $fp;

my $mainFuncSignaure = qr/define.*@(sub_.*_main).*/;
my $mainFuncName     = qr/sub_.*_main/;
my $callSignature    = qr/\s*(\S*) = call.*?@(sub_.*?)\(.*\).*/;

my @collectLines = ();
my @collecDecls  = ();
my %declFuncNames;

# Collect the Declarations
my $posn           = 0;
my $foundFirstDefn = 0;
for ( $posn = 0 ; $posn < scalar(@lines) ; $posn = $posn + 1 ) {
    my $tline = $lines[$posn];
    if ( $tline !~ m/define|Function Attrs/ ) {
        push @collecDecls, $tline;
        next;
    }
    last;
}

# Collect the Rest
my $foundMain = 0;
for ( ; $posn < scalar(@lines) ; $posn = $posn + 1 ) {

    #my $tline = utils::trim($lines[$posn]);
    my $tline = $lines[$posn];
    if ( $foundMain == 0 and ( $tline !~ m/define.*\@sub_.*/ ) ) {
        push @collectLines, $tline;
        next;
    }

    # Process function body
    $foundMain = 1;
    if ( $tline =~ m/$callSignature/ ) {
        my $calledFunc = $2;

        if ( !exists $declFuncNames{$calledFunc} ) {
            # print $calledFunc. "\n";
            $declFuncNames{$calledFunc} = 1;
        }

        $tline =~ s/$calledFunc/$calledFunc\_renamed_/;
        push @collectLines, $tline . "\n";
    }
    else {
        push @collectLines, $tline;
        if ( $tline =~ m/^}$/ ) {
            $foundMain = 0;
        }
    }
}

## Open file to write
open( my $ofp, ">", $file ) or die "cannot open: $!";
print("Writing to $file ...\n");

for my $line (@collecDecls) {
    print $ofp $line;
}

for my $line ( keys %declFuncNames ) {
    print $ofp "declare %struct.Memory* @"
      . $line
      . "_renamed_"
      . "(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)"
      . "\n";
}

print $ofp "\n";
for my $line (@collectLines) {
    print $ofp $line;
}

#for (my $i = 0 ; $i < scalar(@collectLines); $i = $i +1) {
#  print "OLD:". $lines[$i];
#  print "NEW:".$collectLines[$i];
#}

close $ofp;

