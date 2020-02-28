#!/usr/bin/perl
#
# Usage create_directtory_structure.pl --file Output/test-lstate.out
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
    my $script_dir = dirname(__FILE__);
    unshift @INC, $script_dir;
}
use kutils;
use utils;

my $help = "";
my $file = "";
my $opc  = "";

GetOptions(
    "help"   => \$help,
    "file:s" => \$file,
    "opc:s"  => \$opc,
) or die("Error in command line arguments\n");

sub usage {
    print("Usage create_lspec.pl --file Output/test-lstate.out --opc <opcode>");
}
if ( $help or $file eq "" ) {
    usage();
    exit(1);
}

## Read from seed file
my ( $filedir, $filebasse, $fileext ) = utils::split_filename($file);

open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines = <$fp>;
close $fp;

## Extract Information from lstate file
my @globals    = extractLStateInfo("globals");
my @functions  = extractLStateInfo("functions");
my @structures = extractLStateInfo("structures");

my $LSpecFile = "$filedir/../test-lspec.k";
open( my $lfp, ">", $LSpecFile ) or die "cannot open: $!";
print("LSpec File:$LSpecFile\n");

### Process memory
my $memSize = 0;
if ( $opc =~ m/_m(\d+)/ ) {
    $memSize = $1;
}
my $memVals        = "";
my $settingAddress = "";
if ( $memSize != 0 ) {

    # Find the symloc
    my $symlocSubExpr = "";
    for my $line (@lines) {
        chomp $line;

        if ( $line =~
            m/(symloc\s*\(\s*5\s*,\s*\d+\s*,\s*\d+\s*,\s*\d+\s*),\s*\d+\s*\)/ )
        {
            $symlocSubExpr = $1;
        }
    }

    if ( $symlocSubExpr eq "" ) {
        exit(1);
    }

    for ( my $i = 0 ; $i < $memSize / 8 ; $i++ ) {
        $memVals =
            $memVals
          . "      "
          . $symlocSubExpr . ", "
          . $i . " )"
          . " |-> ( byte ( "
          . $i
          . " , 8 , "
          . "VL_MEM_"
          . $memSize
          . ":Int ) => _)";
        $memVals = $memVals . "\n";
    }

    if ( $opc eq "pmuludq_xmm_m128" ) {
        $memVals = pmuludq_xmm_m128();
    }

    if ( ( $opc eq "andnps_xmm_m128" ) or ( $opc eq "pandn_xmm_m128" ) ) {
        $memVals = andnps_xmm_m128();
    }

    my $symlocExpr = $symlocSubExpr . ", 0 )";
    $settingAddress = qq(
      symloc ( 4 , 64 , 6144 , 8 , 4472 ) |-> byte ( 0 , 8 , ptr ( $symlocExpr , 32 ) )
      symloc ( 4 , 64 , 6144 , 8 , 4473 ) |-> byte ( 1 , 8 , ptr ( $symlocExpr , 32 ) )
      symloc ( 4 , 64 , 6144 , 8 , 4474 ) |-> byte ( 2 , 8 , ptr ( $symlocExpr , 32 ) )
      symloc ( 4 , 64 , 6144 , 8 , 4475 ) |-> byte ( 3 , 8 , ptr ( $symlocExpr , 32 ) )
      symloc ( 4 , 64 , 6144 , 8 , 4476 ) |-> byte ( 4 , 8 , ptr ( $symlocExpr , 32 ) )
      symloc ( 4 , 64 , 6144 , 8 , 4477 ) |-> byte ( 5 , 8 , ptr ( $symlocExpr , 32 ) )
      symloc ( 4 , 64 , 6144 , 8 , 4478 ) |-> byte ( 6 , 8 , ptr ( $symlocExpr , 32 ) )
      symloc ( 4 , 64 , 6144 , 8 , 4479 ) |-> byte ( 7 , 8 , ptr ( $symlocExpr , 32 ) )
    );
}
############
my $isXMM     = 0;
my $isXMM2Req = 0;
if ( $opc =~ m/xmm|ymm/ ) {
    $isXMM = 1;
}

if ( $opc =~ m/xmm2|ymm2/ ) {
    $isXMM2Req = 1;
}
print $lfp getLSpecTemplate( $isXMM, $isXMM2Req );

close $lfp;

######################## Routines

sub extractLStateInfo {
    my $nameLbl  = shift @_;
    my @store    = ();
    my $foundLbl = 0;

    for my $line (@lines) {
        if ( $foundLbl == 0 and ( $line !~ m/\<$nameLbl\>/ ) ) {
            next;
        }

        $foundLbl = 1;
        push @store, $line;

        if ( $line =~ m/\<\/$nameLbl\>/ ) {
            last;
        }
    }

    if ( scalar(@store) == 0 ) {
        exit(1);
    }

    #printArray(\@store);
    return @store;
}

sub getLSpecTemplate {
    my $isXMM     = shift @_;
    my $isXMM2Req = shift @_;

    my $XMM2Code = "";

    if ($isXMM2Req) {
        $XMM2Code = qq(
      // YMM2
      symloc ( 4 , 64 , 6144 , 8 , 2176 ) |->  ( byte ( 0 , 8 , VL_YMM2_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2177 ) |->  ( byte ( 1 , 8 , VL_YMM2_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2178 ) |->  ( byte ( 2 , 8 , VL_YMM2_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2179 ) |->  ( byte ( 3 , 8 , VL_YMM2_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2180 ) |->  ( byte ( 4 , 8 , VL_YMM2_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2181 ) |->  ( byte ( 5 , 8 , VL_YMM2_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2182 ) |->  ( byte ( 6 , 8 , VL_YMM2_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2183 ) |->  ( byte ( 7 , 8 , VL_YMM2_0:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 2184 ) |->  ( byte ( 0 , 8 , VL_YMM2_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2185 ) |->  ( byte ( 1 , 8 , VL_YMM2_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2186 ) |->  ( byte ( 2 , 8 , VL_YMM2_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2187 ) |->  ( byte ( 3 , 8 , VL_YMM2_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2188 ) |->  ( byte ( 4 , 8 , VL_YMM2_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2189 ) |->  ( byte ( 5 , 8 , VL_YMM2_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2190 ) |->  ( byte ( 6 , 8 , VL_YMM2_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2191 ) |->  ( byte ( 7 , 8 , VL_YMM2_1:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 2192 ) |->  ( byte ( 0 , 8 , VL_YMM2_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2193 ) |->  ( byte ( 1 , 8 , VL_YMM2_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2194 ) |->  ( byte ( 2 , 8 , VL_YMM2_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2195 ) |->  ( byte ( 3 , 8 , VL_YMM2_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2196 ) |->  ( byte ( 4 , 8 , VL_YMM2_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2197 ) |->  ( byte ( 5 , 8 , VL_YMM2_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2198 ) |->  ( byte ( 6 , 8 , VL_YMM2_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2199 ) |->  ( byte ( 7 , 8 , VL_YMM2_2:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 2200 ) |->  ( byte ( 0 , 8 , VL_YMM2_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2201 ) |->  ( byte ( 1 , 8 , VL_YMM2_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2202 ) |->  ( byte ( 2 , 8 , VL_YMM2_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2203 ) |->  ( byte ( 3 , 8 , VL_YMM2_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2204 ) |->  ( byte ( 4 , 8 , VL_YMM2_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2205 ) |->  ( byte ( 5 , 8 , VL_YMM2_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2206 ) |->  ( byte ( 6 , 8 , VL_YMM2_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2207 ) |->  ( byte ( 7 , 8 , VL_YMM2_3:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 2208 ) |->  ( byte ( 0 , 8 , VL_YMM2_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2209 ) |->  ( byte ( 1 , 8 , VL_YMM2_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2210 ) |->  ( byte ( 2 , 8 , VL_YMM2_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2211 ) |->  ( byte ( 3 , 8 , VL_YMM2_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2212 ) |->  ( byte ( 4 , 8 , VL_YMM2_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2213 ) |->  ( byte ( 5 , 8 , VL_YMM2_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2214 ) |->  ( byte ( 6 , 8 , VL_YMM2_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2215 ) |->  ( byte ( 7 , 8 , VL_YMM2_4:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 2216 ) |->  ( byte ( 0 , 8 , VL_YMM2_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2217 ) |->  ( byte ( 1 , 8 , VL_YMM2_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2218 ) |->  ( byte ( 2 , 8 , VL_YMM2_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2219 ) |->  ( byte ( 3 , 8 , VL_YMM2_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2220 ) |->  ( byte ( 4 , 8 , VL_YMM2_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2221 ) |->  ( byte ( 5 , 8 , VL_YMM2_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2222 ) |->  ( byte ( 6 , 8 , VL_YMM2_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2223 ) |->  ( byte ( 7 , 8 , VL_YMM2_5:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 2224 ) |->  ( byte ( 0 , 8 , VL_YMM2_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2225 ) |->  ( byte ( 1 , 8 , VL_YMM2_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2226 ) |->  ( byte ( 2 , 8 , VL_YMM2_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2227 ) |->  ( byte ( 3 , 8 , VL_YMM2_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2228 ) |->  ( byte ( 4 , 8 , VL_YMM2_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2229 ) |->  ( byte ( 5 , 8 , VL_YMM2_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2230 ) |->  ( byte ( 6 , 8 , VL_YMM2_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2231 ) |->  ( byte ( 7 , 8 , VL_YMM2_6:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 2232 ) |->  ( byte ( 0 , 8 , VL_YMM2_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2233 ) |->  ( byte ( 1 , 8 , VL_YMM2_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2234 ) |->  ( byte ( 2 , 8 , VL_YMM2_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2235 ) |->  ( byte ( 3 , 8 , VL_YMM2_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2236 ) |->  ( byte ( 4 , 8 , VL_YMM2_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2237 ) |->  ( byte ( 5 , 8 , VL_YMM2_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2238 ) |->  ( byte ( 6 , 8 , VL_YMM2_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2239 ) |->  ( byte ( 7 , 8 , VL_YMM2_7:Int ) => _)

    );
    }

    my $globals    = join "", @globals;
    my $functions  = join "", @functions;
    my $structures = join "", @structures;

    my $XMMMemLayout = "";
    my $XMMPreConds  = "";
    if ($isXMM) {
        $XMMMemLayout = qq(
      // YMM1
      symloc ( 4 , 64 , 6144 , 8 , 2112 ) |->  ( byte ( 0 , 8 , VL_YMM1_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2113 ) |->  ( byte ( 1 , 8 , VL_YMM1_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2114 ) |->  ( byte ( 2 , 8 , VL_YMM1_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2115 ) |->  ( byte ( 3 , 8 , VL_YMM1_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2116 ) |->  ( byte ( 4 , 8 , VL_YMM1_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2117 ) |->  ( byte ( 5 , 8 , VL_YMM1_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2118 ) |->  ( byte ( 6 , 8 , VL_YMM1_0:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2119 ) |->  ( byte ( 7 , 8 , VL_YMM1_0:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 2120 ) |->  ( byte ( 0 , 8 , VL_YMM1_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2121 ) |->  ( byte ( 1 , 8 , VL_YMM1_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2122 ) |->  ( byte ( 2 , 8 , VL_YMM1_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2123 ) |->  ( byte ( 3 , 8 , VL_YMM1_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2124 ) |->  ( byte ( 4 , 8 , VL_YMM1_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2125 ) |->  ( byte ( 5 , 8 , VL_YMM1_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2126 ) |->  ( byte ( 6 , 8 , VL_YMM1_1:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2127 ) |->  ( byte ( 7 , 8 , VL_YMM1_1:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 2128 ) |->  ( byte ( 0 , 8 , VL_YMM1_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2129 ) |->  ( byte ( 1 , 8 , VL_YMM1_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2130 ) |->  ( byte ( 2 , 8 , VL_YMM1_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2131 ) |->  ( byte ( 3 , 8 , VL_YMM1_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2132 ) |->  ( byte ( 4 , 8 , VL_YMM1_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2133 ) |->  ( byte ( 5 , 8 , VL_YMM1_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2134 ) |->  ( byte ( 6 , 8 , VL_YMM1_2:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2135 ) |->  ( byte ( 7 , 8 , VL_YMM1_2:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 2136 ) |->  ( byte ( 0 , 8 , VL_YMM1_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2137 ) |->  ( byte ( 1 , 8 , VL_YMM1_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2138 ) |->  ( byte ( 2 , 8 , VL_YMM1_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2139 ) |->  ( byte ( 3 , 8 , VL_YMM1_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2140 ) |->  ( byte ( 4 , 8 , VL_YMM1_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2141 ) |->  ( byte ( 5 , 8 , VL_YMM1_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2142 ) |->  ( byte ( 6 , 8 , VL_YMM1_3:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 2143 ) |->  ( byte ( 7 , 8 , VL_YMM1_3:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 2144 ) |->  ( byte ( 0 , 8 , VL_YMM1_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2145 ) |->  ( byte ( 1 , 8 , VL_YMM1_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2146 ) |->  ( byte ( 2 , 8 , VL_YMM1_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2147 ) |->  ( byte ( 3 , 8 , VL_YMM1_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2148 ) |->  ( byte ( 4 , 8 , VL_YMM1_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2149 ) |->  ( byte ( 5 , 8 , VL_YMM1_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2150 ) |->  ( byte ( 6 , 8 , VL_YMM1_4:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2151 ) |->  ( byte ( 7 , 8 , VL_YMM1_4:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 2152 ) |->  ( byte ( 0 , 8 , VL_YMM1_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2153 ) |->  ( byte ( 1 , 8 , VL_YMM1_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2154 ) |->  ( byte ( 2 , 8 , VL_YMM1_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2155 ) |->  ( byte ( 3 , 8 , VL_YMM1_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2156 ) |->  ( byte ( 4 , 8 , VL_YMM1_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2157 ) |->  ( byte ( 5 , 8 , VL_YMM1_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2158 ) |->  ( byte ( 6 , 8 , VL_YMM1_5:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2159 ) |->  ( byte ( 7 , 8 , VL_YMM1_5:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 2160 ) |->  ( byte ( 0 , 8 , VL_YMM1_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2161 ) |->  ( byte ( 1 , 8 , VL_YMM1_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2162 ) |->  ( byte ( 2 , 8 , VL_YMM1_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2163 ) |->  ( byte ( 3 , 8 , VL_YMM1_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2164 ) |->  ( byte ( 4 , 8 , VL_YMM1_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2165 ) |->  ( byte ( 5 , 8 , VL_YMM1_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2166 ) |->  ( byte ( 6 , 8 , VL_YMM1_6:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2167 ) |->  ( byte ( 7 , 8 , VL_YMM1_6:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 2168 ) |->  ( byte ( 0 , 8 , VL_YMM1_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2169 ) |->  ( byte ( 1 , 8 , VL_YMM1_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2170 ) |->  ( byte ( 2 , 8 , VL_YMM1_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2171 ) |->  ( byte ( 3 , 8 , VL_YMM1_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2172 ) |->  ( byte ( 4 , 8 , VL_YMM1_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2173 ) |->  ( byte ( 5 , 8 , VL_YMM1_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2174 ) |->  ( byte ( 6 , 8 , VL_YMM1_7:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 2175 ) |->  ( byte ( 7 , 8 , VL_YMM1_7:Int ) => _)

      $XMM2Code
);

        $XMMPreConds = qq(
        andBool   (VL_YMM1_0 >=Int -9223372036854775808) andBool (VL_YMM1_0 <=Int 9223372036854775807)
        andBool   (VL_YMM1_1 >=Int -9223372036854775808) andBool (VL_YMM1_1 <=Int 9223372036854775807)
        andBool   (VL_YMM1_2 >=Int -9223372036854775808) andBool (VL_YMM1_2 <=Int 9223372036854775807)
        andBool   (VL_YMM1_3 >=Int -9223372036854775808) andBool (VL_YMM1_3 <=Int 9223372036854775807)
        andBool   (VL_YMM2_0 >=Int -9223372036854775808) andBool (VL_YMM2_0 <=Int 9223372036854775807)
        andBool   (VL_YMM2_1 >=Int -9223372036854775808) andBool (VL_YMM2_1 <=Int 9223372036854775807)
        andBool   (VL_YMM2_2 >=Int -9223372036854775808) andBool (VL_YMM2_2 <=Int 9223372036854775807)
        andBool   (VL_YMM2_3 >=Int -9223372036854775808) andBool (VL_YMM2_3 <=Int 9223372036854775807)

);
    }    ## End if(isXMM)

    my $LSpecTemplate = qq(module TEST-LSPEC
imports LLVM-SEMANTICS

rule
<k>
  callProc(
      ccc,
      tFunc(
        tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
        tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) )  .FirstClassTypes , false ),

      typedVal(
        tPtr(
          tFunc(
            tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
            tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) )  tInt ( 64 )  tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ) .FirstClassTypes , false ) ) ,
        fptr ( globalID ( \@routine_$opc ) , 0 )
        ),

      (
       argumentVal(
         tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ),
         typedVal(tPtr ( tIdentifiedStruct ( localID ( %struct.State ) ) ),
           ptr(symloc(4, 64, 6144, 8, 0), 0))
         )

       argumentVal(tInt(64), typedVal(tInt(64), 0))

       argumentVal(
         tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
         typedVal(tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
           ptr(symloc(5, 64, 8, 8, 0), 0))
         )
       .ArgumentVals
       ):ArgumentVals)

       =>

         typedVal(tPtr ( tIdentifiedStruct ( localID ( %struct.Memory ) ) ),
           ptr(symloc(5, 64, 8, 8, 0), 0))

</k>
<memory>
<nextLoc> 5 </nextLoc>
<objects>
mem (
      $XMMMemLayout
      // Flags
      symloc ( 4 , 64 , 6144 , 8 , 4097 ) |->  ( byte ( 0 , 1 , VL_CF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4099 ) |->  ( byte ( 0 , 1 , VL_PF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4101 ) |->  ( byte ( 0 , 1 , VL_AF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4103 ) |->  ( byte ( 0 , 1 , VL_ZF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4105 ) |->  ( byte ( 0 , 1 , VL_SF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4107 ) |->  ( byte ( 0 , 1 , VL_DF:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4109 ) |-> ( byte ( 0 , 1 , VL_OF:Int ) => _)
      // GPRs
      symloc ( 4 , 64 , 6144 , 8 , 4360 ) |-> ( byte ( 0 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4361 ) |-> ( byte ( 1 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4362 ) |-> ( byte ( 2 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4363 ) |-> ( byte ( 3 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4364 ) |-> ( byte ( 4 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4365 ) |-> ( byte ( 5 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4366 ) |-> ( byte ( 6 , 8 , VL_RAX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4367 ) |-> ( byte ( 7 , 8 , VL_RAX:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 4376 ) |-> ( byte ( 0 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4377 ) |-> ( byte ( 1 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4378 ) |-> ( byte ( 2 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4379 ) |-> ( byte ( 3 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4380 ) |-> ( byte ( 4 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4381 ) |-> ( byte ( 5 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4382 ) |-> ( byte ( 6 , 8 , VL_RBX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4383 ) |-> ( byte ( 7 , 8 , VL_RBX:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 4392 ) |-> ( byte ( 0 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4393 ) |-> ( byte ( 1 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4394 ) |-> ( byte ( 2 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4395 ) |-> ( byte ( 3 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4396 ) |-> ( byte ( 4 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4397 ) |-> ( byte ( 5 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4398 ) |-> ( byte ( 6 , 8 , VL_RCX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4399 ) |-> ( byte ( 7 , 8 , VL_RCX:Int ) => _)

      symloc ( 4 , 64 , 6144 , 8 , 4408 ) |-> ( byte ( 0 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4409 ) |-> ( byte ( 1 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4410 ) |-> ( byte ( 2 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4411 ) |-> ( byte ( 3 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4412 ) |-> ( byte ( 4 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4413 ) |-> ( byte ( 5 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4414 ) |-> ( byte ( 6 , 8 , VL_RDX:Int ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4415 ) |-> ( byte ( 7 , 8 , VL_RDX:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 4424 ) |-> ( byte ( 0 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4425 ) |-> ( byte ( 1 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4426 ) |-> ( byte ( 2 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4427 ) |-> ( byte ( 3 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4428 ) |-> ( byte ( 4 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4429 ) |-> ( byte ( 5 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4430 ) |-> ( byte ( 6 , 8 , VL_RSI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4431 ) |-> ( byte ( 7 , 8 , VL_RSI:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 4440 ) |-> ( byte ( 0 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4441 ) |-> ( byte ( 1 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4442 ) |-> ( byte ( 2 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4443 ) |-> ( byte ( 3 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4444 ) |-> ( byte ( 4 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4445 ) |-> ( byte ( 5 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4446 ) |-> ( byte ( 6 , 8 , VL_RDI:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4447 ) |-> ( byte ( 7 , 8 , VL_RDI:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 4456 ) |-> ( byte ( 0 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4457 ) |-> ( byte ( 1 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4458 ) |-> ( byte ( 2 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4459 ) |-> ( byte ( 3 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4460 ) |-> ( byte ( 4 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4461 ) |-> ( byte ( 5 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4462 ) |-> ( byte ( 6 , 8 , VL_RSP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4463 ) |-> ( byte ( 7 , 8 , VL_RSP:Int ) => _)

      // symloc ( 4 , 64 , 6144 , 8 , 4472 ) |-> ( byte ( 0 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4473 ) |-> ( byte ( 1 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4474 ) |-> ( byte ( 2 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4475 ) |-> ( byte ( 3 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4476 ) |-> ( byte ( 4 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4477 ) |-> ( byte ( 5 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4478 ) |-> ( byte ( 6 , 8 , VL_RBP:Int ) => _)
      // symloc ( 4 , 64 , 6144 , 8 , 4479 ) |-> ( byte ( 7 , 8 , VL_RBP:Int ) => _)
      $settingAddress

      symloc ( 4 , 64 , 6144 , 8 , 4616 ) |-> ( byte ( 0 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4617 ) |-> ( byte ( 1 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4618 ) |-> ( byte ( 2 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4619 ) |-> ( byte ( 3 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4620 ) |-> ( byte ( 4 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4621 ) |-> ( byte ( 5 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4622 ) |-> ( byte ( 6 , 8 , 0 ) => _)
      symloc ( 4 , 64 , 6144 , 8 , 4623 ) |-> ( byte ( 7 , 8 , 0 ) => _)

$memVals
  )
</objects>
<freed> .MemorySet </freed>
</memory>
$globals
$functions
$structures

// requires          (VL_RAX >=Int 0) andBool (V_RAX <=Int 18446744073709551615)
//         andBool   (VL_RBX >=Int 0) andBool (V_RBX <=Int 18446744073709551615)
//         andBool   (VL_RCX >=Int 0) andBool (V_RCX <=Int 18446744073709551615)
//         andBool   (VL_RDX >=Int 0) andBool (V_RDX <=Int 18446744073709551615)
//         andBool   (VL_CF  ==Int 0) orBool (V_CF  ==Int 1)
//         andBool   (VL_PF  ==Int 0) orBool (V_PF  ==Int 1)
//         andBool   (VL_AF  ==Int 0) orBool (V_AF  ==Int 1)
//         andBool   (VL_ZF  ==Int 0) orBool (V_ZF  ==Int 1)
//         andBool   (VL_SF  ==Int 0) orBool (V_SF  ==Int 1)
//         andBool   (VL_DF  ==Int 0) orBool (V_DF  ==Int 1)
//         andBool   (VL_OF  ==Int 0) orBool (V_OF  ==Int 1)


endmodule
);

    return $LSpecTemplate;
}

sub pmuludq_xmm_m128 {
    my $structLayout = qq(
      symloc ( 5 , 64 , 8 , 8 , 0 ) |-> ( byte ( 0 , 8 , VL_MEM_64_0:Int ) => _)
      symloc ( 5 , 64 , 8 , 8 , 1 ) |-> ( byte ( 1 , 8 , VL_MEM_64_0:Int ) => _)
      symloc ( 5 , 64 , 8 , 8 , 2 ) |-> ( byte ( 2 , 8 , VL_MEM_64_0:Int ) => _)
      symloc ( 5 , 64 , 8 , 8 , 3 ) |-> ( byte ( 3 , 8 , VL_MEM_64_0:Int ) => _)
      symloc ( 5 , 64 , 8 , 8 , 4 ) |-> ( byte ( 4 , 8 , VL_MEM_64_0:Int ) => _)
      symloc ( 5 , 64 , 8 , 8 , 5 ) |-> ( byte ( 5 , 8 , VL_MEM_64_0:Int ) => _)
      symloc ( 5 , 64 , 8 , 8 , 6 ) |-> ( byte ( 6 , 8 , VL_MEM_64_0:Int ) => _)
      symloc ( 5 , 64 , 8 , 8 , 7 ) |-> ( byte ( 7 , 8 , VL_MEM_64_0:Int ) => _)

      symloc ( 5 , 64 , 16 , 8 , 8 ) |->  ( byte ( 0 , 8 , VL_MEM_64_1:Int ) => _) 
      symloc ( 5 , 64 , 16 , 8 , 9 ) |->  ( byte ( 1 , 8 , VL_MEM_64_1:Int ) => _) 
      symloc ( 5 , 64 , 16 , 8 , 10 ) |-> ( byte ( 2 , 8 , VL_MEM_64_1:Int ) => _) 
      symloc ( 5 , 64 , 16 , 8 , 11 ) |-> ( byte ( 3 , 8 , VL_MEM_64_1:Int ) => _) 
      symloc ( 5 , 64 , 16 , 8 , 12 ) |-> ( byte ( 4 , 8 , VL_MEM_64_1:Int ) => _) 
      symloc ( 5 , 64 , 16 , 8 , 13 ) |-> ( byte ( 5 , 8 , VL_MEM_64_1:Int ) => _) 
      symloc ( 5 , 64 , 16 , 8 , 14 ) |-> ( byte ( 6 , 8 , VL_MEM_64_1:Int ) => _) 
      symloc ( 5 , 64 , 16 , 8 , 15 ) |-> ( byte ( 7 , 8 , VL_MEM_64_1:Int ) => _) );
    return $structLayout;
}

sub andnps_xmm_m128 {
    my $structLayout = qq(
      symloc ( 5 , 32 , 16 , 8 , 0 ) |-> ( byte ( 0 , 4 , VL_MEM_32_0:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 1 ) |-> ( byte ( 1 , 4 , VL_MEM_32_0:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 2 ) |-> ( byte ( 2 , 4 , VL_MEM_32_0:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 3 ) |-> ( byte ( 3 , 4 , VL_MEM_32_0:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 4 ) |-> ( byte ( 0 , 4 , VL_MEM_32_1:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 5 ) |-> ( byte ( 1 , 4 , VL_MEM_32_1:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 6 ) |-> ( byte ( 2 , 4 , VL_MEM_32_1:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 7 ) |-> ( byte ( 3 , 4 , VL_MEM_32_1:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 8 ) |-> ( byte ( 0 , 4 , VL_MEM_32_2:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 9 ) |-> ( byte ( 1 , 4 , VL_MEM_32_2:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 10 ) |-> ( byte ( 2 , 4 , VL_MEM_32_2:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 11 ) |-> ( byte ( 3 , 4 , VL_MEM_32_2:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 12 ) |-> ( byte ( 0 , 4 , VL_MEM_32_3:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 13 ) |-> ( byte ( 1 , 4 , VL_MEM_32_3:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 14 ) |-> ( byte ( 2 , 4 , VL_MEM_32_3:Int ) => _)
      symloc ( 5 , 32 , 16 , 8 , 15 ) |-> ( byte ( 3 , 4 , VL_MEM_32_3:Int ) => _)
      );
    return $structLayout;
}
