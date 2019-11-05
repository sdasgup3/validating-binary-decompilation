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
my $size   = 0;

GetOptions(
    "help"     => \$help,
    "binary:s" => \$binary,
    "pc:s"     => \$pc,
    "size:s"   => \$size,
) or die("Error in command line arguments\n");

sub usage {
    print(
"Usage find_pc_in_relocinfo.pl --binary <binary> --pc <pc address in hex> --size <size in ints>\n"
          . "Returns 'address  if the pc value is within the relocation address range"
          . ", 'constant' otherwise." );
}
if ( $help or $binary eq "" ) {
    usage();
    exit(1);
}

my $readelf_out = execute("readelf --relocs $binary");
my @lines = split( "\n", $readelf_out );

my ( $pc_signed, $pc_unsigned ) = toDec( $pc, 64 );

my $instr_start = $pc_unsigned;
my $instr_end   = $pc_unsigned + $size;

for my $tline (@lines) {
    my $line = trim($tline);
    if ( ( $line =~ m/Relocation section/ ) or ( $line =~ m/Offset/ ) ) {
        next;
    }

    if ( $line eq "" ) {
        next;
    }

    my @lineInfo = split( ' ', $line );
    my $offset = $lineInfo[0];

    my ( $rela_address_signed, $rela_address_unsigned ) = toDec( $offset, 64 );

    if (    $rela_address_unsigned >= $instr_start
        and $rela_address_unsigned < $instr_end )
    {
        print "address";
        exit 0;
    }
}

print "constant";
exit 0;
