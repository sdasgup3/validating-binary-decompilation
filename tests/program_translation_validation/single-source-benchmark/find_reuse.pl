#!/usr/bin/perl
##
## Checks if a text section reloc information I satisfies PC <= I < PC + size
##
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

GetOptions(
    "help"     => \$help,
) or die("Error in command line arguments\n");

sub usage {
    print("");
}
if ( $help) {
    usage();
    exit(1);
}

my $find_out = execute("find /home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark -name invoke_compd_seq.log");
my @lines = split( "\n", $readelf_out );

#my ( $pc_signed, $pc_unsigned ) = toDec( $pc, 64 );
#
#my $instr_start  = $pc_unsigned;
#my $instr_end    = $pc_unsigned + $size;
#my $search_begin = 0;
#
#for my $tline (@lines) {
#    my $line = trim($tline);
#    if ( ( $line =~ m/Relocation section/ ) ) {
#        if ( ( $line =~ m/\.rela\.text/ ) ) {
#            $search_begin = 1;
#        }
#        else {
#            $search_begin = 0;
#        }
#        next;
#    }
#
#    if ( $line =~ m/Offset/ || $line eq "" || $search_begin == 0 ) {
#        next;
#    }
#
#    my @lineInfo = split( ' ', $line );
#    my $offset = $lineInfo[0];
#
#    my ( $rela_address_signed, $rela_address_unsigned ) = toDec( $offset, 64 );
#
#    if (    $rela_address_unsigned >= $instr_start
#        and $rela_address_unsigned < $instr_end )
#    {
#        print "address\n";
#        print $offset . " within [" . $instr_start . " - " . $instr_end . "]\n";
#
#        exit 0;
#    }
#}
#
#print "constant";
exit 0;
