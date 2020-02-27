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
    my $script_dir = dirname(__FILE__);
    unshift @INC, $script_dir;
}
use kutils;
use utils;

my $help     = "";
my $seedfile = "";

GetOptions(
    "help"   => \$help,
    "seed:s" => \$seedfile,
) or die("Error in command line arguments\n");

sub usage {
    print("Usage create_xspec.pl --seed <filename>");
    print("Example: ./create_xspec.pl <...>/<opcode>/seed/<opocde>.s");
}
if ( $help or $seedfile eq "" ) {
    usage();
    exit(1);
}

## Read from seed file
my ( $seeddir, $opcode, $seedext ) = utils::split_filename($seedfile);
print "\nProcessing:" . $opcode . "::" . $seeddir . "\n";

open( my $fp, "<", $seedfile ) or die "cannot open: $!";
my @lines = <$fp>;
close $fp;

my $instr = "";
for my $line (@lines) {
    if ( $line !~ m/target|retq/ ) {
        $instr = utils::trim($line);
    }
}

my @operands  = kutils::instrGetOperands($instr);
my $instrCell = $instr . ", .Operands";
if ( scalar(@operands) == 0 ) {
    $instrCell = $instr . " .Operands";
}

### Process memory
my $memSize = 0;
if ( $opcode =~ m/_m(\d+)/ ) {
    $memSize = $1;
}
my $memVals     = "";
my $startAddr   = 1000;
my $requireCond = "";
if ( $memSize != 0 ) {
    for ( my $i = 0 ; $i < $memSize / 8 ; $i++ ) {
        $memVals =
            $memVals
          . "symloc ( 1 , 128 , 1040 , 8 , "
          . $startAddr
          . " ) |-> (byte ( "
          . $i
          . " ,  mi(" . $memSize .", VX_MEM_"
          . $memSize
          . ")) => _)";
        $memVals = $memVals . "\n";
        $startAddr = $startAddr + 1;
    }
    $memVals = $memVals . "\n";

    $requireCond =
        $requireCond
      . "andBool   VX_MEM_"
      . $memSize
      . " >=Int 0 andBool VX_MEM_"
      . $memSize
      . " <Int 2 ^Int "
      . $memSize;
}
############

my $XSpecFile = "$seeddir/../test-xspec.k";
open( my $xfp, ">", $XSpecFile ) or die "cannot open: $!";
print("XSpec FIle:$XSpecFile\n");
if ( $memSize == 0 ) {
    print $xfp getXSpecTemplate();
}
else {
    print $xfp getXSpecTemplateMem();
}
close $xfp;

######################## Routines
sub getXSpecTemplateMem {
    my $XSpecTemplate = qq(module TEST-XSPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetchNoDBG => exit_0 </k>
      <functargets>  
        _start  |-> ptr ( symloc ( -1 , 0, 0 , 0 , 0) , mi(64, 0))
      </functargets> 
      <rotargets> .Map </rotargets> 
      <bsstargets> .Map </bsstargets> 
      <datatargets> .Map </datatargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <lastseenlabel> .K </lastseenlabel>
      <currentsection> "text" </currentsection>
      <regstate>
        "RIP" |-> ( ptr (symloc(-1, 0, 0 , 0 , 0), mi(64, 0))  => mi(64, 18446744073709551615)) //\@ensure
        "RSP" |-> ( ptr ( symloc ( 1 , 128 , 1040 , 8 , 0 ) , mi(64,1032) ) =>
                      ptr ( symloc ( 1 , 128 , 1040 , 8 , 0 ) , mi(64,1040) )) //\@ensure
        "RBP" |-> ptr ( symloc ( 1 , 128 , 1040 , 8 , 0 ) , mi(64,1032) ) // \@ensure

        "RAX" |-> (mi(64, VX_RAX:Int):MInt => mi(64, _:Int))
        "RBX" |-> (mi(64, VX_RBX:Int):MInt => mi(64, _:Int))
        "RCX" |-> (mi(64, VX_RCX:Int):MInt => mi(64, _:Int))
        "RDX" |-> (mi(64, VX_RDX:Int):MInt => mi(64, _:Int))
        "RSI" |-> (mi(64, VX_RSI:Int):MInt => mi(64, _:Int))
        "RDI" |-> (mi(64, VX_RDI:Int):MInt => mi(64, _:Int))
        // W/o the folowing the prover fails on solving query                              
        "AF" |->  (mi(1,  VX_AF:Int):MInt  => mi(1,  _:Int))
        "CF" |->  (mi(1,  VX_CF:Int):MInt  => mi(1,  _:Int))
        "OF" |->  (mi(1,  VX_OF:Int):MInt  => mi(1,  _:Int))
        "PF" |->  (mi(1,  VX_PF:Int):MInt  => mi(1,  _:Int))
        "SF" |->  (mi(1,  VX_SF:Int):MInt  => mi(1,  _:Int))
        "ZF" |->  (mi(1,  VX_ZF:Int):MInt  => mi(1,  _:Int))
        // Ymms
        "YMM1" |->  (mi(256,  VX_YMM1:Int):MInt  => mi(256,  _:Int))
        "YMM2" |->  (mi(256,  VX_YMM2:Int):MInt  => mi(256,  _:Int))
         // Main Claim
      </regstate>

      <memstate>
        <text> 
          code ( 
      ptr ( symloc ( -1 , 0 , 0 , 0 , 0) , mi(64,0) ) |-> storedInstr ( $instrCell )
      ptr ( symloc ( -1 , 0 , 0 , 0 , 0) , mi(64,1) ) |-> storedInstr ( ret .Operands )
             )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
                    // allocated memory
$memVals

                    // return address
                    symloc ( 1 , 128 , 1040 , 8 , 1032 ) |-> byte ( 0 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1033 ) |-> byte ( 1 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1034 ) |-> byte ( 2 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1035 ) |-> byte ( 3 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1036 ) |-> byte ( 4 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1037 ) |-> byte ( 5 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1038 ) |-> byte ( 6 , mi(64,-1) )
                    symloc ( 1 , 128 , 1040 , 8 , 1039 ) |-> byte ( 7 , mi(64,-1) )
                  )
            </objects>
            <freed>
              .Set
            </freed>
          </memory>
          <stackbase>
            stackBaseInfo ( symloc ( 1 , 128 , 1040 , 8 , 0 ) , mi(64, 1032) )
          </stackbase>
          <robase>    roBaseInfo(.K , .K , .K  ) </robase>
          <database>  dataBaseInfo(.K , .K , .K ) </database>
          <bssbase>   bssBaseInfo(.K , .K , .K ) </bssbase>
        </stack>
      </memstate>

      <environment>
        <argc> .K  </argc>
        <argv> .K  </argv>
      </environment>
        requires  VX_RAX >=Int 0 andBool VX_RAX <Int 2 ^Int 64 
        andBool   VX_RBX >=Int 0 andBool VX_RBX <Int 2 ^Int 64 
        andBool   VX_RCX >=Int 0 andBool VX_RCX <Int 2 ^Int 64 
        andBool   VX_RDX >=Int 0 andBool VX_RDX <Int 2 ^Int 64 
        andBool   VX_RSI >=Int 0 andBool VX_RSI <Int 2 ^Int 64 
        andBool   VX_RDI >=Int 0 andBool VX_RDI <Int 2 ^Int 64 
        andBool   (VX_CF ==Int 0 orBool VX_CF ==Int 1)
        andBool   (VX_SF ==Int 0 orBool VX_SF ==Int 1)
        andBool   (VX_PF ==Int 0 orBool VX_PF ==Int 1)
        andBool   (VX_ZF ==Int 0 orBool VX_ZF ==Int 1)
        andBool   (VX_AF ==Int 0 orBool VX_AF ==Int 1)
        andBool   (VX_OF ==Int 0 orBool VX_OF ==Int 1)
        $requireCond
endmodule
);

    return $XSpecTemplate;

}

sub getXSpecTemplate {
    my $XSpecTemplate = qq(module TEST-XSPEC
  imports X86-SEMANTICS

  // Main Configuration
  rule
    <k> fetchNoDBG => exit_0 </k>
      <functargets>  
        _start  |-> ptr ( symloc ( -1 , 0, 0 , 0 , 0) , mi(64, 0))
      </functargets> 
      <rotargets> .Map </rotargets> 
      <bsstargets> .Map </bsstargets> 
      <datatargets> .Map </datatargets> 
      <entrypoint> .K </entrypoint>
      <nextLocPc>  _:MInt  </nextLocPc>
      <lastseenlabel> .K </lastseenlabel>
      <currentsection> "text" </currentsection>
      <regstate>
        "RIP" |-> ( ptr (symloc(-1, 0, 0 , 0 , 0), mi(64, 0))  => mi(64, 18446744073709551615)) //\@ensure
        "RSP" |-> ( ptr ( symloc ( 1 , 128 , 1024 , 8 , 0 ) , mi(64,1016) ) =>
                      ptr ( symloc ( 1 , 128 , 1024 , 8 , 0 ) , mi(64,1024) )) //\@ensure
        "RBP" |-> ptr ( symloc ( 1 , 128 , 1024 , 8 , 0 ) , mi(64,1016) ) // \@ensure

        "RAX" |-> (mi(64, VX_RAX:Int):MInt => mi(64, _:Int))
        "RBX" |-> (mi(64, VX_RBX:Int):MInt => mi(64, _:Int))
        "RCX" |-> (mi(64, VX_RCX:Int):MInt => mi(64, _:Int))
        "RDX" |-> (mi(64, VX_RDX:Int):MInt => mi(64, _:Int))
        "RSI" |-> (mi(64, VX_RSI:Int):MInt => mi(64, _:Int))
        "RDI" |-> (mi(64, VX_RDI:Int):MInt => mi(64, _:Int))
        // W/o the folowing the prover fails on solving query                              
        "AF" |->  (mi(1,  VX_AF:Int):MInt  => mi(1,  _:Int))
        "CF" |->  (mi(1,  VX_CF:Int):MInt  => mi(1,  _:Int))
        "OF" |->  (mi(1,  VX_OF:Int):MInt  => mi(1,  _:Int))
        "PF" |->  (mi(1,  VX_PF:Int):MInt  => mi(1,  _:Int))
        "SF" |->  (mi(1,  VX_SF:Int):MInt  => mi(1,  _:Int))
        "ZF" |->  (mi(1,  VX_ZF:Int):MInt  => mi(1,  _:Int))
        // Ymms
        "YMM1" |->  (mi(256,  VX_YMM1:Int):MInt  => mi(256,  _:Int))
        "YMM2" |->  (mi(256,  VX_YMM2:Int):MInt  => mi(256,  _:Int))
         // Main Claim
      </regstate>

      <memstate>
        <text> 
          code ( 
      ptr ( symloc ( -1 , 0 , 0 , 0 , 0) , mi(64,0) ) |-> storedInstr ( $instrCell )
      ptr ( symloc ( -1 , 0 , 0 , 0 , 0) , mi(64,1) ) |-> storedInstr ( ret .Operands )
             )
        </text>
        <stack> 
          <memory>
            <nextLoc> 1 </nextLoc> 
            <objects>  
               mem( 
                    // allocated memory
                    symloc ( 1 , 128 , 1024 , 8 , 1000 ) |-> (byte ( 0 , undefMInt) => _) // -16(%ebp)
                    symloc ( 1 , 128 , 1024 , 8 , 1001 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1002 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1003 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1004 ) |-> (byte ( 0 , undefMInt) => _) // -12(%ebp)
                    symloc ( 1 , 128 , 1024 , 8 , 1005 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1006 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1007 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1008 ) |-> (byte ( 0 , undefMInt) => _) // -8(%ebp)
                    symloc ( 1 , 128 , 1024 , 8 , 1009 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1010 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1011 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1012 ) |-> (byte ( 0 , undefMInt) => _) // -4(%ebp)
                    symloc ( 1 , 128 , 1024 , 8 , 1013 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1014 ) |-> (byte ( 0 , undefMInt) => _)
                    symloc ( 1 , 128 , 1024 , 8 , 1015 ) |-> (byte ( 0 , undefMInt) => _)

                    // return address
                    symloc ( 1 , 128 , 1024 , 8 , 1016 ) |-> byte ( 0 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1017 ) |-> byte ( 1 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1018 ) |-> byte ( 2 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1019 ) |-> byte ( 3 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1020 ) |-> byte ( 4 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1021 ) |-> byte ( 5 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1022 ) |-> byte ( 6 , mi(64,-1) )
                    symloc ( 1 , 128 , 1024 , 8 , 1023 ) |-> byte ( 7 , mi(64,-1) )
                  )
            </objects>
            <freed>
              .Set
            </freed>
          </memory>
          <stackbase>
            stackBaseInfo ( symloc ( 1 , 128 , 1024 , 8 , 0 ) , mi(64, 1016) )
          </stackbase>
          <robase>    roBaseInfo(.K , .K , .K  ) </robase>
          <database>  dataBaseInfo(.K , .K , .K ) </database>
          <bssbase>   bssBaseInfo(.K , .K , .K ) </bssbase>
        </stack>
      </memstate>

      <environment>
        <argc> .K  </argc>
        <argv> .K  </argv>
      </environment>
        requires  VX_RAX >=Int 0 andBool VX_RAX <Int 2 ^Int 64 
        andBool   VX_RBX >=Int 0 andBool VX_RBX <Int 2 ^Int 64 
        andBool   VX_RCX >=Int 0 andBool VX_RCX <Int 2 ^Int 64 
        andBool   VX_RDX >=Int 0 andBool VX_RDX <Int 2 ^Int 64 
        andBool   VX_RSI >=Int 0 andBool VX_RSI <Int 2 ^Int 64 
        andBool   VX_RDI >=Int 0 andBool VX_RDI <Int 2 ^Int 64 
        andBool   (VX_CF ==Int 0 orBool VX_CF ==Int 1)
        andBool   (VX_SF ==Int 0 orBool VX_SF ==Int 1)
        andBool   (VX_PF ==Int 0 orBool VX_PF ==Int 1)
        andBool   (VX_ZF ==Int 0 orBool VX_ZF ==Int 1)
        andBool   (VX_AF ==Int 0 orBool VX_AF ==Int 1)
        andBool   (VX_OF ==Int 0 orBool VX_OF ==Int 1)
endmodule
);

    return $XSpecTemplate;

}

