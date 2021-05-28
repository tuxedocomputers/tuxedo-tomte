#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use FindBin qw($Bin);
use lib "$Bin/.";


# TODO just for debug, delete afterwards
use Data::Dumper qw(Dumper);

my $status = networkStatus();

print "status: $status\n";


# returns 1 if active interface found
# returns 0 if none found
sub networkStatus {
	my $dirHandle;
	my $interfacesDir = '/sys/class/net';
	if ( !opendir ($dirHandle, $interfacesDir)) {
		printLog("unable to open $interfacesDir: $!");
		return (0);
	}
	my @FILES = grep { $_ ne '.' && $_ ne '..' && $_ ne 'lo' } readdir($dirHandle);
	if (scalar(@FILES) < 1) { return (0); }
	foreach my $file (@FILES) {
		if (readFileReturnLine("$interfacesDir/$file/operstate") eq 'up' ) {
			return (1);
		}
	}
	return (0);
}


sub readFileReturnLine {
    my $file = shift;
    my $FH;
    my $line;
    if ( open $FH, "<", $file ) {
        chomp($line = <$FH>);
        close $FH;
    } else {
        print "Err: $!";
        print "no $file present or unable to open the file for reading";
        return;
    }
    return $line;
}
