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

my $help               = "";
my $file               = "";

GetOptions(
    "help"               => \$help,
    "file:s"             => \$file,
) or die("Error in command line arguments\n");

sub usage {
}
if ( $help or $file eq "") {
    usage();
    exit(1);
}

## Open file to read
open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines = <$fp>;
close $fp;


open( my $outf, ">", "$file" . ".pruned") or die "cannot open: $!";

my $count = 0;
my $may = 0;
my $must = 0;
my $partial = 0;

my @collectLines = ();

for my $line (@lines) {
  if($line =~ m/NoAlias|ModRef/) {
    next;
  }

  if($line =~ m/Function:/) {
    $count = $count +  1;
    if($count == 2) {
      last;
    }
    next;
  }
  if($line =~ m/Report/) {
    last;
  }

  if($line =~ m/MayAlias/) {
    $may = $may +1;
  }
  if($line =~ m/MustAlias/) {
    $must = $must +1;
  }
  if($line =~ m/PartialAlias/) {
    $partial = $partial +1;
  }

  push @collectLines, $line;
}

print("Writing to file: ". $file . ".pruned\n");

print $outf $may . ":" . $must . ":" . $partial . "\n";
for my $line (@collectLines) {
  print $outf $line;
}

close $outf;
