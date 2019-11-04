#!/usr/bin/perl
use strict;
use warnings;
use Getopt::Long;
use File::Basename;

my $home = "";

BEGIN {
    my $script_dir1 = dirname(__FILE__);
    unshift @INC, $script_dir1;
}
use kutils;
use utils;

my $help   = "";
my $binary = "";
my $pc     = 0;

GetOptions(
    "help"     => \$help,
    "binary:s" => \$binary,
    "pc:s"     => \$pc,
) or die("Error in command line arguments\n");

sub usage {
    print(
        "Usage find_pc_in_relocinfo.pl --binary <binary> --pc <pc address>\n"
          . "Returns 'address  if the pc value is within the relocation address range"
          . ", 'constant' otherwise." );
}
if ( $help or $binary eq "" ) {
    usage();
    exit(1);
}

my $readelf_out = execute("readelf --relocs $binary");
my @lines = split( "\n", $readelf_out );

#printArray( \@lines );

my %relInfo;
my $startProcess = 0;
my $start        = "";
my $prev_line    = "";

for my $tline (@lines) {
    my $line = trim($tline);
    if ( ( $line =~ m/Relocation section/ ) or ( $line =~ m/Offset/ ) ) {
        $startProcess = $startProcess + 1;
        next;
    }

    if ( $startProcess != 2 ) {
        next;
    }

    if ( $start eq "" ) {
        my @lineInfo = split( ' ', $line );
        $start = $lineInfo[0];
        $relInfo{$start} = $start;
    }

    if ( $line eq "" ) {
        my @lineInfo = split( ' ', $prev_line );
        $relInfo{$start} = $lineInfo[0];
        $start           = "";
        $startProcess    = 0;
    }

    $prev_line = $line;
}

my ( $pc_signed, $pc_unsigned ) = toDec( $pc, 64 );
for my $key ( sort keys %relInfo ) {
    my ( $start_signed, $start_unsigned ) = toDec( $key,           64 );
    my ( $end_signed,   $end_unsigned )   = toDec( $relInfo{$key}, 64 );

    if ( $pc_unsigned >= $start_unsigned and $pc_unsigned <= $end_unsigned ) {
        print "address";
        exit 0;
    }

}

print "constant";
exit 0;
