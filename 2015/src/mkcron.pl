#/usr/bin/perl

use strict;
use warnings;

open(my $TIMESFH, "<", "times.txt") or die "Couldn't open times.txt for reading: $!";
open(my $CRONSFH, ">", "crons.txt") or die "Couldn't open crons.txt for writing: $!";

my @times = <$TIMESFH>;

my $current_time="";
my $hour="";
my $minute="";
foreach(@times) {
    $current_time = $_;
    $current_time =~ /(\d\d)(\d\d)/;
    $hour = $1;
    $minute = $2;
    print $CRONSFH "* * * $hour $minute /usr/local/bin/analemma_capture.sh\n";
}

close $TIMESFH;
close $CRONSFH;
