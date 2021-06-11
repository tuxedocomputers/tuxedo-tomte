#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;



sub messageLog {
	my $message = shift;
	my ($type) = @_;
	if (!defined($type)) {
		$type = 'l';
	}
	print "msg: $message type: $type\n";
	if ($type =~ /t/) {
		print "t\n";
	}
	if ($type =~ /l/) {
		print "l\n";
	}
}

messageLog('message tl', 'tl');
messageLog('message');
messageLog('message t', 't');
