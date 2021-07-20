#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);


sub deinstKernelFlavour {
	my $flavour = shift;
	my $retString;
	my $searchCmd;
	my @lines;
	my %pkgsHash;
	my $deinstString = 'apt-get remove -s';
	if ($flavour eq 'linux-generic') {
		$searchCmd = "dpkg-query -W -f=\'\${Package} \${db:Status-Abbrev}\n\' linux-image-5.4.0-*-generic vim vimm tree 2>&1";
		$retString = `$searchCmd`;
		@lines = split /\n/, $retString;
		foreach (@lines) {
			if ((!($_ =~ /dpkg-query:/)) && ($_ =~ /.*\s[ih][ncHUFWti]/)) {
				/(\S+)\s*(\S+)/;
				$pkgsHash{$1} = $2;
			}
		}
	}

	foreach my $deinstKey (keys %pkgsHash) {
		$deinstString = $deinstString.' '.$deinstKey;
	}
	print "$deinstString\n";
}

deinstKernelFlavour('linux-generic');
