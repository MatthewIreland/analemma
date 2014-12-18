#/usr/bin/perl

use strict;
use warnings;

open(my $COMMANDFH, ">", "analemma_capture.sh") or die "Couldn't open analemma_capture.sh for writing: $!";
open(my $TEMPLATEFH, "<", "capture_command.txt") or die "Couldn't open capture_command.txt for reading: $!";

print $COMMANDFH "#!/bin/bash\n";
print $COMMANDFH "# Generated using mkscript.pl\n\n";
print $COMMANDFH "cd /home/matthew/analemma_shots\n";
print $COMMANDFH "mkdir \$(date --iso-8601)\n";
my $command = <$TEMPLATEFH>;
print $COMMANDFH "${command}\n";

close $TEMPLATEFH;
close $COMMANDFH;

