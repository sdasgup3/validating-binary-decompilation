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

my $help              = "";
my $file              = "";
my $outdir            = "";
my $opcode            = "";
my $renameintrinsics  = "";
my $defineintrinsics  = "";
my $definememtype     = "";
my $definemain        = "";
my $removedoublecolon = "";
my $singleiv          = "";
my $programiv         = "";

## Global consants
my $maxTargetInfoLength = 4;
my $terminatingInstr =
qr/.*\%struct\.State, \%struct.State\* \%0, i64 0, i32 6, i32 13, i32 0, i32 0/;

GetOptions(
    "help"             => \$help,
    "renameintrinsics" => \$renameintrinsics,
    "singleiv"         => \$singleiv,
    "programiv"        => \$programiv,
    "defineintrinsics" => \$defineintrinsics,
    "definemain"       => \$definemain,
    "definememtype"    => \$definememtype,
    "file:s"           => \$file,
    "opc:s"            => \$opcode,
) or die("Error in command line arguments\n");

sub usage {
    print("Usage declutter.pl --file <filename>.ll --opc <att opcode>\n");
    print("Output: Generates <filename.mod.ll>");
    print("Description:\n");
    print("Extracts main function in an LLVM IR file translated from Mcsema\n");
    print("Removes the return address section of the function\n");
    print("changes struct.State definitions on the top of the file\n");
}
if ( $help or $file eq "" or $opcode eq "" ) {
    usage();
    exit(1);
}

## Open file to read
open( my $fp, "<", $file ) or die "cannot open: $!";
my @lines = <$fp>;
close $fp;

### Process memory
my $memSize = 0;
if ( $opcode =~ m/_m(\d+)/ ) {
    $memSize = $1;
}

my $memAccessCode  = "";
my $valueOrAddress = 800;
if ( $memSize != 0 ) {
    $memAccessCode =
        $memAccessCode . "\n"
      . "  %memaddr = alloca i"
      . $memSize . "\n"
      . "  store i"
      . $memSize
      . " 80, i"
      . $memSize
      . "* %memaddr" . "\n"
      . "  %memaddr2int = ptrtoint i"
      . $memSize
      . "* %memaddr to i64"
      . "\n" . "  %memaddr2intoff = add i64 32, %memaddr2int " . "\n";

    if($opcode eq "pmuludq_xmm_m128") {
      $memAccessCode = pmuludq_xmm_m128();
    }
    if($opcode eq "pandn_xmm_m128") {
      $memAccessCode = pandn_xmm_m128();
    }
    if($opcode eq "andnps_xmm_m128") {
      $memAccessCode = pandn_xmm_m128();
    }

    $valueOrAddress = "%memaddr2intoff";
}
####################

if ( $singleiv ne "" ) {
    $definemain        = 1;
    $renameintrinsics  = 1;
    $defineintrinsics  = 1;
    $definememtype     = 1;
    $removedoublecolon = 1;
}

if ( $programiv ne "" ) {
    $definemain        = "";
    $renameintrinsics  = "";
    $defineintrinsics  = "";
    $definememtype     = "";
    $removedoublecolon = "";
}

## Remove ::bitset
if ($removedoublecolon) {
    for ( my $i = 0 ; $i < scalar(@lines) ; $i = $i + 1 ) {
        $lines[$i] =~ s/::BitMatrix/__BitMatrix/g;
        $lines[$i] =~ s/::bitset/__bitset/g;
    }
}

## Get Target Info
#my $targetInfo = "";
#
#for ( my $i = 0 ; $i < $maxTargetInfoLength ; $i = $i + 1 ) {
#    my $line = $lines[$i];
#    $targetInfo = $targetInfo . $line;
#}
#
##print($targetInfo);
#
### Get Stucture Layout
#my $structLayout = getStructureLayout();

my $decls = getDeclarations();

# Hold the code for all the relevant functions
my @funcs = ();

# The new name of the main function
my $modMainName = "routine_" . $opcode;

# Collect all the defined functions' names
my %definedFuncs = ();
collectDefinedFunctions();

# Find the body of the main function
my $mainFuncSignaure = qr/define.*@(sub_.*_main).*/;
my $mainFuncName     = qr/sub_.*_main/;
my $callSignature    = qr/\s*(\S*) = call.*?@(.*?)\(.*\).*/;
my @foundMain        = @{ getMainBody($mainFuncName) };

# Ieratively determine the body of the callee from main
expandMain( \@foundMain );

# Refine the decls: Keeps the Decls which are used in the bod definitions
#for my $itr (@funcs) {
#  my $refinedDecls = refineDecls(\@decls, $itr);
#  @decls = @{$refinedDecls};
#}

## Open file to write
my ( $dirname, $basename, $ext ) = utils::split_filename($file);
my $outFileName = $basename . ".mod.ll";
if ( $dirname ne "" ) {
    $outFileName = $dirname . "/" . $outFileName;
}
open( my $ofp, ">", $outFileName ) or die "cannot open: $!";
print("Generatin $outFileName for opcode $opcode ...\n");

#print $ofp $targetInfo;
#print $ofp "\n";
#print $ofp $structLayout;
#print $ofp "\n";

print $ofp $decls . "\n";

if ( $defineintrinsics ne "" ) {
    print $ofp getInstrinticsDefinitions();
}

print $ofp "\n";
for my $itr (@funcs) {
    print $ofp @{$itr};
}
print $ofp "\n";

if ( $definemain ne "" ) {
    if ( $opcode =~ m/xmm|ymm/ ) {
        print $ofp getMainDefintion(1);
    }
    else {
        print $ofp getMainDefintion(0);
    }
}

close $ofp;

##############################################
## Utils
sub fixFunc {
    my $mainBodyRef = shift @_;
    my @mainBody    = @{$mainBodyRef};

    my @modMain = ();

    for my $line (@mainBody) {

        ## Remove metadata info
        if ( $line =~ m/(.*), !(tbaa|srcloc).*/g ) {
            $line = $1 . "\n";
        }

        # Rename instrinsics
        if ( $renameintrinsics ne "" ) {
            $line =~ s/\@llvm\.(.*)/\@my\.$1/;
        }

        # Remove nsw nuw
        $line =~ s/nsw//g;
        $line =~ s/nuw//g;

        push @modMain, $line;
    }

    return @modMain;
}

sub getMainBody {
    my $funcName = shift @_;

    my @mainBody   = ();
    my $foundMain  = 0;
    my $countCalls = 0;
    my $mainRetval = "";

    for my $line (@lines) {
        my $tline = utils::trim($line);

        if ( $foundMain == 0 and ( $tline !~ m/define.*\@sub_.*_main.*/ ) ) {
            next;
        }

        if ( $foundMain == 0 ) {

            #print "!!".$tline. "!!";
            # Remove noalias

            if ( $tline =~ m/(define.*)\@(sub_.*_main)(.*)/ ) {

                #print "#".$tline. "#\n";
                my $mainproto = "$1\@$modMainName$3";
                $mainproto =~ s/noalias//g;

                #push @mainBody, "$1\@$modMainName$3\n";
                push @mainBody, $mainproto . "\n";
                $foundMain = 1;
                next;
            }
        }

        ## The main body can have 2 calls only when the second call is
        ## to __remill_atomic_end. Otherwise, the main body will have just 1
        ## call
        if ( $tline =~ m/$callSignature/ ) {
            my $calledRetVal = $1;
            my $calledFunc   = $2;

            if ( $countCalls == 1 ) {
                if ( $calledFunc eq "__remill_atomic_end" ) {
                    push @mainBody, $line;
                    $mainRetval = $calledRetVal;
                }
                else {
                    exit(1);
                }
                last;
            }

            if ( isDefined($calledFunc) == 1 ) {
                push @mainBody, $line;
                $mainRetval = $calledRetVal;
                $countCalls = 1;
                next;
            }
        }

        if ( $countCalls == 1 ) {
            last;
        }

        if ( $tline =~ m/store i64 \%1, i64\* \%PC, align 8/ ) {
            next;
        }

        push @mainBody, $line;

    }

    push @mainBody, "  ret %struct.Memory* $mainRetval\n";
    push @mainBody, "}\n";

    #utils::printArray(\@mainBody);
    return \@mainBody;
}

sub expandMain {
    my $progBodyRef = shift @_;
    my @progBody    = @{$progBodyRef};

    my @calledFuncs = ();
    my $foundMain   = 0;

    for my $line (@progBody) {
        my $tline = utils::trim($line);

        # print $tline."\n";
        if ( $tline =~ m/$callSignature/ ) {

            # if ( $tline =~ m/.*call.*@(.*)\(.*\).*/g ) {
            my $calledFunc = $2;

            # print "expandMain: " . $calledFunc ."\n";
            if ( isDefined($calledFunc) == 1 ) {
                push @calledFuncs, $calledFunc;
            }
        }
    }

    for my $calledFunc (@calledFuncs) {
        print "Expanding $calledFunc...\n";
        my @funcBody = @{ getFuncBody($calledFunc) };
        expandMain( \@funcBody );
    }

    my @fixedBody = fixFunc( \@progBody );
    push @funcs, \@fixedBody;
}

sub getFuncBody {
    my $funcName = shift @_;

    my @mainBody  = ();
    my $foundMain = 0;

    for my $line (@lines) {
        my $tline = utils::trim($line);
        if ( $foundMain == 0 and ( $tline !~ m/define.*@($funcName).*/g ) ) {
            next;
        }

        if ( $tline =~ m/define/ ) {
            $line =~ s/noalias//g;
        }

        $foundMain = 1;
        push @mainBody, "$line";

        if ( $line =~ m/^}$/g ) {
            push @mainBody, "\n";
            last;
        }
    }

    #utils::printArray(\@mainBody);
    return \@mainBody;
}

sub collectDefinedFunctions {
    for my $line (@lines) {
        my $tline = utils::trim($line);
        if ( $tline =~ m/define.*\@(.*?)\(.*\).*/g ) {
            $definedFuncs{$1} = 1;
        }
    }

    #printMap(\%definedFuncs);
}

sub isDefined {
    my $funcName = shift @_;

    if ( exists $definedFuncs{$funcName} ) {

        #print $funcName . "defined ...\n";
        return 1;
    }

    #print $funcName . "not defined ...\n";
    return 0;
}

sub getDeclarations {
    my $decls = "";

    # my @decls = ();

    for my $line (@lines) {
        my $tline = utils::trim($line);

        if ( $tline =~ m/define|declare/ ) {
            last;
        }

        if ( $tline =~ m/__mcsema|wrapper|__got|callback/ ) {
            next;
        }

        if ($singleiv) {
            if ( $tline =~ m/^@/ ) {
                next;
            }
        }

        if ( $tline =~ m/(.*) = (.*)/g ) {

            # push @decls, $line;
            if ($definememtype) {
                if ( $tline =~ m/%struct.Memory/ and $tline =~ m/type opaque/ )
                {
                    $line = "%struct.Memory = type { i64 }" . "\n";
                }
            }
            $decls = $decls . $line;
        }
    }

    return $decls;

    # return \@decls;
}

sub refineDecls {
    my @decls    = @{ shift @_ };
    my @funcBody = @{ shift @_ };

    my @refinedDecls = ();

    for my $decl (@decls) {
        my $tdecl = utils::trim($decl);

        my $defn = "";
        if ( $tdecl =~ m/(.*) = (.*)/g ) {
            $defn = $1;
        }

        my $used = "false";
        for my $line (@funcBody) {
            my $tline = utils::trim($line);
            if ( $tline =~ m/$defn/ ) {
                $used = "true";
            }
        }

        if ( $used eq "true" ) {
            push @refinedDecls, $decl;
        }
    }

    print @refinedDecls;
    return \@refinedDecls;
}

sub getInstrinticsDefinitions {

    my $intrinsicDefintions = qq(define i32 \@my.ctpop.i32(i32 %x) {
entry:
  %and = and i32 %x, 1
  %shr123 = lshr i32 %x, 1
  %and1 = and i32 %shr123, 1
  %shr2124 = lshr i32 %x, 2
  %and3 = and i32 %shr2124, 1
  %shr5125 = lshr i32 %x, 3
  %and6 = and i32 %shr5125, 1
  %shr8126 = lshr i32 %x, 4
  %and9 = and i32 %shr8126, 1
  %shr11127 = lshr i32 %x, 5
  %and12 = and i32 %shr11127, 1
  %shr14128 = lshr i32 %x, 6
  %and15 = and i32 %shr14128, 1
  %shr17129 = lshr i32 %x, 7
  %and18 = and i32 %shr17129, 1
  %shr20130 = lshr i32 %x, 8
  %and21 = and i32 %shr20130, 1
  %shr23131 = lshr i32 %x, 9
  %and24 = and i32 %shr23131, 1
  %shr26132 = lshr i32 %x, 10
  %and27 = and i32 %shr26132, 1
  %shr29133 = lshr i32 %x, 11
  %and30 = and i32 %shr29133, 1
  %shr32134 = lshr i32 %x, 12
  %and33 = and i32 %shr32134, 1
  %shr35135 = lshr i32 %x, 13
  %and36 = and i32 %shr35135, 1
  %shr38136 = lshr i32 %x, 14
  %and39 = and i32 %shr38136, 1
  %shr41137 = lshr i32 %x, 15
  %and42 = and i32 %shr41137, 1
  %shr44138 = lshr i32 %x, 16
  %and45 = and i32 %shr44138, 1
  %shr47139 = lshr i32 %x, 17
  %and48 = and i32 %shr47139, 1
  %shr50140 = lshr i32 %x, 18
  %and51 = and i32 %shr50140, 1
  %shr53141 = lshr i32 %x, 19
  %and54 = and i32 %shr53141, 1
  %shr56142 = lshr i32 %x, 20
  %and57 = and i32 %shr56142, 1
  %shr59143 = lshr i32 %x, 21
  %and60 = and i32 %shr59143, 1
  %shr62144 = lshr i32 %x, 22
  %and63 = and i32 %shr62144, 1
  %shr65145 = lshr i32 %x, 23
  %and66 = and i32 %shr65145, 1
  %shr68146 = lshr i32 %x, 24
  %and69 = and i32 %shr68146, 1
  %shr71147 = lshr i32 %x, 25
  %and72 = and i32 %shr71147, 1
  %shr74148 = lshr i32 %x, 26
  %and75 = and i32 %shr74148, 1
  %shr77149 = lshr i32 %x, 27
  %and78 = and i32 %shr77149, 1
  %shr80150 = lshr i32 %x, 28
  %and81 = and i32 %shr80150, 1
  %shr83151 = lshr i32 %x, 29
  %and84 = and i32 %shr83151, 1
  %shr86152 = lshr i32 %x, 30
  %and87 = and i32 %shr86152, 1
  %shr89153 = lshr i32 %x, 31
  %add = add i32 %shr89153, %and
  %add4 = add i32 %add, %and1
  %add7 = add i32 %add4, %and3
  %add10 = add i32 %add7, %and6
  %add13 = add i32 %add10, %and9
  %add16 = add i32 %add13, %and12
  %add19 = add i32 %add16, %and15
  %add22 = add i32 %add19, %and18
  %add25 = add i32 %add22, %and21
  %add28 = add i32 %add25, %and24
  %add31 = add i32 %add28, %and27
  %add34 = add i32 %add31, %and30
  %add37 = add i32 %add34, %and33
  %add40 = add i32 %add37, %and36
  %add43 = add i32 %add40, %and39
  %add46 = add i32 %add43, %and42
  %add49 = add i32 %add46, %and45
  %add52 = add i32 %add49, %and48
  %add55 = add i32 %add52, %and51
  %add58 = add i32 %add55, %and54
  %add61 = add i32 %add58, %and57
  %add64 = add i32 %add61, %and60
  %add67 = add i32 %add64, %and63
  %add70 = add i32 %add67, %and66
  %add73 = add i32 %add70, %and69
  %add76 = add i32 %add73, %and72
  %add79 = add i32 %add76, %and75
  %add82 = add i32 %add79, %and78
  %add85 = add i32 %add82, %and81
  %add88 = add i32 %add85, %and84
  %add91 = add i32 %add88, %and87
  ret i32 %add91
}

define %struct.Memory* \@__remill_atomic_begin(%struct.Memory*) {
  ret %struct.Memory* %0
}

define %struct.Memory* \@__remill_atomic_end(%struct.Memory*) {
  ret %struct.Memory* %0
}

);
    return $intrinsicDefintions;
}

sub getMainDefintion {
    my $isXMM = shift @_;

    my $xmmAccessCode = qq(
  %vecr = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr, i64 0, i64 1
  %vec512 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx, i32 0, i32 0
  %uint64v8 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec512, i32 0, i32 0
  %int64_arr = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v8, i32 0, i32 0
  %arrayidx1 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr, i64 0, i64 0
  store i64 8810, i64* %arrayidx1, align 8

  %vecr2 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr2, i64 0, i64 1
  %vec5124 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx3, i32 0, i32 0
  %uint64v85 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec5124, i32 0, i32 0
  %int64_arr6 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v85, i32 0, i32 0
  %arrayidx7 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr6, i64 0, i64 1
  store i64 8820, i64* %arrayidx7, align 8

  %vecr8 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr8, i64 0, i64 1
  %vec51210 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx9, i32 0, i32 0
  %uint64v811 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51210, i32 0, i32 0
  %int64_arr12 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v811, i32 0, i32 0
  %arrayidx13 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr12, i64 0, i64 2
  store i64 8830, i64* %arrayidx13, align 8

  %vecr14 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr14, i64 0, i64 1
  %vec51216 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx15, i32 0, i32 0
  %uint64v817 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51216, i32 0, i32 0
  %int64_arr18 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v817, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr18, i64 0, i64 3
  store i64 8840, i64* %arrayidx19, align 8

  %vecr20 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr20, i64 0, i64 1
  %vec51222 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx21, i32 0, i32 0
  %uint64v823 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51222, i32 0, i32 0
  %int64_arr24 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v823, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr24, i64 0, i64 4
  store i64 8850, i64* %arrayidx25, align 8

  %vecr26 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr26, i64 0, i64 1
  %vec51228 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx27, i32 0, i32 0
  %uint64v829 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51228, i32 0, i32 0
  %int64_arr30 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v829, i32 0, i32 0
  %arrayidx31 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr30, i64 0, i64 5
  store i64 8860, i64* %arrayidx31, align 8

  %vecr32 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr32, i64 0, i64 1
  %vec51234 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx33, i32 0, i32 0
  %uint64v835 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51234, i32 0, i32 0
  %int64_arr36 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v835, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr36, i64 0, i64 6
  store i64 8870, i64* %arrayidx37, align 8

  %vecr38 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr38, i64 0, i64 1
  %vec51240 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx39, i32 0, i32 0
  %uint64v841 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51240, i32 0, i32 0
  %int64_arr42 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v841, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr42, i64 0, i64 7
  store i64 8880, i64* %arrayidx43, align 8

  %vecr44 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr44, i64 0, i64 2
  %vec51246 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx45, i32 0, i32 0
  %uint64v847 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51246, i32 0, i32 0
  %int64_arr48 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v847, i32 0, i32 0
  %arrayidx49 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr48, i64 0, i64 0
  store i64 9910, i64* %arrayidx49, align 8

  %vecr50 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr50, i64 0, i64 2
  %vec51252 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx51, i32 0, i32 0
  %uint64v853 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51252, i32 0, i32 0
  %int64_arr54 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v853, i32 0, i32 0
  %arrayidx55 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr54, i64 0, i64 1
  store i64 9920, i64* %arrayidx55, align 8

  %vecr56 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr56, i64 0, i64 2
  %vec51258 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx57, i32 0, i32 0
  %uint64v859 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51258, i32 0, i32 0
  %int64_arr60 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v859, i32 0, i32 0
  %arrayidx61 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr60, i64 0, i64 2
  store i64 9930, i64* %arrayidx61, align 8

  %vecr62 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr62, i64 0, i64 2
  %vec51264 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx63, i32 0, i32 0
  %uint64v865 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51264, i32 0, i32 0
  %int64_arr66 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v865, i32 0, i32 0
  %arrayidx67 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr66, i64 0, i64 3
  store i64 9940, i64* %arrayidx67, align 8

  %vecr68 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr68, i64 0, i64 2
  %vec51270 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx69, i32 0, i32 0
  %uint64v871 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51270, i32 0, i32 0
  %int64_arr72 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v871, i32 0, i32 0
  %arrayidx73 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr72, i64 0, i64 4
  store i64 9950, i64* %arrayidx73, align 8

  %vecr74 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr74, i64 0, i64 2
  %vec51276 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx75, i32 0, i32 0
  %uint64v877 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51276, i32 0, i32 0
  %int64_arr78 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v877, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr78, i64 0, i64 5
  store i64 9960, i64* %arrayidx79, align 8

  %vecr80 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr80, i64 0, i64 2
  %vec51282 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx81, i32 0, i32 0
  %uint64v883 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51282, i32 0, i32 0
  %int64_arr84 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v883, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr84, i64 0, i64 6
  store i64 9970, i64* %arrayidx85, align 8

  %vecr86 = getelementptr inbounds %struct.State, %struct.State* %state, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %vecr86, i64 0, i64 2
  %vec51288 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %arrayidx87, i32 0, i32 0
  %uint64v889 = getelementptr inbounds %union.vec512_t, %union.vec512_t* %vec51288, i32 0, i32 0
  %int64_arr90 = getelementptr inbounds %struct.uint64v8_t, %struct.uint64v8_t* %uint64v889, i32 0, i32 0
  %arrayidx91 = getelementptr inbounds [8 x i64], [8 x i64]* %int64_arr90, i64 0, i64 7
  store i64 9980, i64* %arrayidx91, align 8

);
    if ($isXMM == 0) {
      $xmmAccessCode = "";
    }

    my $mainDefn = qq(define i32 \@main() {
entry:
  %state = alloca %struct.State

  $memAccessCode
  %mem = alloca %struct.Memory
  %memf0 = getelementptr inbounds %struct.Memory, %struct.Memory* %mem, i32 0, i32 0
  store i64 51, i64* %memf0, align 8
  
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0

  %cf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 1
  %pf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 3
  %af = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 5
  %zf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 7
  %sf = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 9
  %df = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 11
  %of = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 2, i32 13

  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 $valueOrAddress, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8

  store i8 10, i8* %cf, align 1
  store i8 20, i8* %pf, align 1
  store i8 30, i8* %af, align 1
  store i8 40, i8* %zf, align 1
  store i8 50, i8* %sf, align 1
  store i8 60, i8* %df, align 1
  store i8 70, i8* %of, align 1

  $xmmAccessCode

  %call = call %struct.Memory* \@$modMainName(%struct.State* %state, i64 0, %struct.Memory* %mem)
  ret i32 0
});

    return $mainDefn;
}

sub getStructureLayout {
    my $structLayout = qq(%union.anon = type { i64 }
%struct.State = type {%struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, i64, i64, i64, %struct.GPR}

%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.float32v8_t = type { [8 x float] }
%struct.int32v8_t = type { [8 x i32] }
%struct.uint16v16_t = type { [16 x i16] }
%struct.uint8v32_t = type { [32 x i8] }
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }
%struct.anon.2 = type { i8, i8 }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.Memory = type { i64 }
);
    return $structLayout;
}

sub pmuludq_xmm_m128 {
    my $structLayout = qq(
  %memaddr = alloca [2 x i64]
  %memaddr0 = getelementptr inbounds [2 x i64], [2 x i64]* %memaddr, i64 0,  i64 0
  %memaddr1 = getelementptr inbounds [2 x i64], [2 x i64]* %memaddr, i64 0,  i64 1
  store i64 1, i64* %memaddr0
  store i64 1, i64* %memaddr1

  %memaddr2int = ptrtoint [2 x i64]* %memaddr to i64  
  %memaddr2intoff = add i64 32, %memaddr2int
);
    return $structLayout;
}

sub andnps_xmm_m128 {
    my $structLayout = qq(
  %memaddr = alloca [4 x i32]
  %memaddr0 = getelementptr inbounds [4 x i32], [4 x i32]* %memaddr, i64 0,  i64 0
  %memaddr1 = getelementptr inbounds [4 x i32], [4 x i32]* %memaddr, i64 0,  i64 1
  %memaddr2 = getelementptr inbounds [4 x i32], [4 x i32]* %memaddr, i64 0,  i64 2
  %memaddr3 = getelementptr inbounds [4 x i32], [4 x i32]* %memaddr, i64 0,  i64 3
  store i32 1, i32* %memaddr0
  store i32 1, i32* %memaddr1
  store i32 1, i32* %memaddr2
  store i32 1, i32* %memaddr3

  %memaddr2int = ptrtoint i32* %memaddr0 to i64
  %memaddr2intoff = add i64 32, %memaddr2int
);
    return $structLayout;
}

sub pandn_xmm_m128 {
    my $structLayout = qq(
  %memaddr = alloca [4 x i32]
  %memaddr0 = getelementptr inbounds [4 x i32], [4 x i32]* %memaddr, i64 0,  i64 0
  %memaddr1 = getelementptr inbounds [4 x i32], [4 x i32]* %memaddr, i64 0,  i64 1
  %memaddr2 = getelementptr inbounds [4 x i32], [4 x i32]* %memaddr, i64 0,  i64 2
  %memaddr3 = getelementptr inbounds [4 x i32], [4 x i32]* %memaddr, i64 0,  i64 3
  store i32 1, i32* %memaddr0
  store i32 1, i32* %memaddr1
  store i32 1, i32* %memaddr2
  store i32 1, i32* %memaddr3

  %memaddr2int = ptrtoint i32* %memaddr0 to i64
  %memaddr2intoff = add i64 32, %memaddr2int
);
    return $structLayout;
}


