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
my $outdir             = "";
my $opcode             = "";
my $norenameintrinsics = "";
my $defineintrinsics   = "";
my $definemain         = "";

## Global consants
my $maxTargetInfoLength = 4;
my $terminatingInstr =
qr/.*\%struct\.State, \%struct.State\* \%0, i64 0, i32 6, i32 13, i32 0, i32 0/;

GetOptions(
    "help"               => \$help,
    "norenameintrinsics" => \$norenameintrinsics,
    "defineintrinsics"   => \$defineintrinsics,
    "definemain"         => \$definemain,
    "file:s"             => \$file,
    "opc:s"              => \$opcode,
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
    print $ofp getMainDefintion();
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
        if ( $line =~ m/(.*), !tbaa.*/g ) {
            $line = $1 . "\n";
        }

        # Rename instrinsics
        if ( $norenameintrinsics eq "" ) {
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

        # if ( $tline =~ m/\s*(\S*) = call.*@(.*?)\(.*\).*/ ) {
        if ( $tline =~ m/$callSignature/ ) {
            my $calledFunc = $2;

            # print $calledFunc."\n";
            if ( isDefined($calledFunc) == 1 ) {

                #print " define... \n";
                #$countCalls = $countCalls + 1;
                #if ( $countCalls == 2 ) {
                #              if ($calledFunc =~ m/RET/) {
                #                  last;
                #              }
                #}
                push @mainBody, $line;
                $mainRetval = $1;
                last;
            }
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

        if ( $line =~ m/}/g ) {
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

        if($tline =~ m/__mcsema|wrapper|__got|callback/) {
          next;
        }

        if ( $tline =~ m/(.*) = (.*)/g ) {

            # push @decls, $line;
            $decls = $decls . $line;
        }
    }

    return $decls;
    # return \@decls;
}

sub refineDecls {
  my @decls = @{shift @_};
  my @funcBody = @{shift @_};

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
      if($tline =~ m/$defn/) {
        $used = "true";
      }
    }

    if($used eq "true") {
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
declare %struct.Memory* \@__remill_atomic_begin(%struct.Memory*);
declare %struct.Memory* \@__remill_atomic_end(%struct.Memory*);
);
    return $intrinsicDefintions;
}

sub getMainDefintion {
    my $mainDefn = qq(define i32 \@main() {
entry:
  %state = alloca %struct.State
  %mem = alloca %struct.Memory
  %addr1 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 1, i32 0, i32 0
  %addr2 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 3, i32 0, i32 0
  %addr3 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 5, i32 0, i32 0
  %addr4 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 7, i32 0, i32 0
  %addr5 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 9, i32 0, i32 0
  %addr6 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 11, i32 0, i32 0
  %addr7 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 13, i32 0, i32 0
  %addr8 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 15, i32 0, i32 0
  %addr9 = getelementptr inbounds %struct.State, %struct.State* %state, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 100, i64* %addr1, align 8
  store i64 200, i64* %addr2, align 8
  store i64 300, i64* %addr3, align 8
  store i64 400, i64* %addr4, align 8
  store i64 500, i64* %addr5, align 8
  store i64 600, i64* %addr6, align 8
  store i64 700, i64* %addr7, align 8
  store i64 800, i64* %addr8, align 8
  store i64 900, i64* %addr9, align 8
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

