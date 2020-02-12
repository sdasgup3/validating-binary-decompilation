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

my $help = "";

GetOptions( "help" => \$help, )
  or die("Error in command line arguments\n");

sub usage {
    print("");
}
if ($help) {
    usage();
    exit(1);
}

#my $find_out = execute("find /home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark -name invoke_compd_seq.log");
my $find_out = execute(
"cat /home/ubuntu/Github/validating-binary-decompilation/tests/program_translation_validation/single-source-benchmark/docs/reported_stats/1_2_4.log"
);
my @files = split( "\n", $find_out );

my $prev_size = 0;
my %FMap;
my $first = "true";
for my $file (@files) {
    my $cfile = trim($file);
    $cfile = $cfile . "/mcsema/invoke_compd_seq.log";
    open( my $fp, "<", $cfile ) or die "cannot open: $!";
    my @lines = <$fp>;
    close $fp;

    my $reuse = 0;
    my $occur = 0;

    # populate in map
    #    if($first eq "true") {
    #      for my $line (@lines) {
    #        my $cline = trim($line);
    #        $FMap{$cline} = 1;
    #        $occur = $occur +1;
    #      }
    #      $first = "false";
    #    } else {

    for my $line (@lines) {
        my $cline = trim($line);

        if ( exists $FMap{$cline} ) {
            $reuse = $reuse + 1;
        }
        else {
            $FMap{$cline} = 1;
        }
        $occur = $occur + 1;

        #      }

        # re populate
        #      for my $line (@lines) {
        #        my $cline = trim($line);
        #        if(not exists $FMap{cline}) {
        #          $FMap{$cline} = 1;
        #        }
        #      }
    }

    my $size = scalar( keys %FMap );
    print( $cfile. "\n" );
    print "Reuse: " . $reuse * 100 / $occur . "\n";
    print "Size: " . $size . "\n";
    print("\n");
}

#print "constant";
exit 0;
