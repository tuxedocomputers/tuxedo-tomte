#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my $lspciValues = `lspci -vn`;
my @lspciLines = split("\n", $lspciValues);

my @subsystemValues = ('1558:50f0', '1558:96e1');
my $lspciLine;
foreach $lspciLine (@lspciLines) {
	if ($lspciLine =~ /Subsystem/) {
		$lspciLine =~ /([0-9a-fA-F]{4}:[0-9a-fA-F]{4})/;
		$lspciLine = $1;
		print "$lspciLine\n";
		foreach ()
	}
}
