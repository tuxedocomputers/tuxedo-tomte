#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

sub deinstExcept {
	my $deinst = shift;
	my $except = shift;
	my $searchCmd = "dpkg-query -W -f=\'\${Package} \${db:Status-Abbrev}\n\' $deinst*";
	my $retString = `$searchCmd`;
	my $retValue = $?;
	if ($retValue != 0) {
		return 0;
	}
	print 'retValue: '.$retValue."\n";
	print "retString: $retString\n";
	my %retHash = $retString =~ /(\S+)\s*(\S+)/g;

	my $pkconDeinst = 'pkcon remove';
	my $deinstCounter = 0;

	foreach my $deinstKey (keys %retHash) {
		if (($retHash{$deinstKey} =~ /i./) && !($deinstKey =~ $except)) {
			print "key: $deinstKey value: $retHash{$deinstKey}\n";
			$deinstCounter++;
			$pkconDeinst = $pkconDeinst.' '.$deinstKey;
		}
	}
	print "hashsize: $deinstCounter\n";
	if ($deinstCounter != 0) {
		print "deinst string: $pkconDeinst\n";
		# deinstall return result
	} else {
		print "nothing to deinstall";
	}
}

deinstExcept('linux', 'linux-image');


