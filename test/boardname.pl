#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $boardnameFilename = "/sys/class/dmi/id/board_name";
my $boardname;
$boardname = readFileReturnLine($boardnameFilename);
print "boardname: $boardname\n";

sub readFileReturnLine {
	my $file = shift;
	my $FH;
	my $line;
	if ( open $FH, "<", $file ) {
		chomp($line = <$FH>);
		close $FH;
	} else {
		printLog("Err: $!");
		printLog("no $file present or unable to open the file for reading");
		return;
	}
	return $line;
}

