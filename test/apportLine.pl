#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);


sub substituteLineInFile {
    my $filename = shift;
    my $origLine = shift;
    my $substLine = shift;
    my @fileLines;
	my $FH;

    if ( open $FH, "<", $filename) {
        while (<$FH>) {
            push (@fileLines, $_);
        }
        close $FH;
    } else {
        print "Err: $!";
        print "no $filename present or unable to open the file for reading";
        return (0);
    }

    foreach( @fileLines ) {
        if ( $_ =~ /^$origLine$/ ) {
            $_ = "$substLine\n";
        }
    }

    if ( open $FH, ">", $filename ) {
        print $FH @fileLines;
        close ($FH);
    } else {
        print "Err: $!";
        print "no $filename present or unable to open the file for writing";
        return (0);
    }
    return (1);
}



sub isLineInFile {
	my $filename = shift;
	my $match = shift;
	if ( open FH, '<', $filename ) {
		while( <FH> ) {
			if ( $_ =~ /^$match$/) {
				print "found\n";
				return (1);
			}
		}
	} else {
		print "can't open file $filename\n";
		return (0);
	}
}

if (isLineInFile('/etc/default/apport', 'enabled=0')) {
	print "line is present\n";
}

if (substituteLineInFile('/etc/default/apport', 'enabled=1', 'enabled=0')) {
	print "done\n";
} else {
	print "failed\n";
}
