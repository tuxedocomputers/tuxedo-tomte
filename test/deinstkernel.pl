#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);


sub uninstKernelFlavour {
	my $flavour = shift;
	my $retString;
	my $searchCmd;
	my @lines;
	my %pkgsHash;
	my $deinstString = 'apt-get remove';
	my $key;
	my $notAllUninstalled = 0;
	if ($flavour eq 'linux-generic') {
		# find installed packages
		$searchCmd = "dpkg-query -W -f=\'\${Package} \${db:Status-Abbrev}\n\' linux-generic linux-image-generic linux-image-5.4.0-*-generic 2>&1";
	}
	$retString = `$searchCmd`;
	@lines = split /\n/, $retString;
	foreach (@lines) {
		if ((!($_ =~ /dpkg-query:/)) && ($_ =~ /.*\s[ih][ncHUFWti]/)) {
			/(\S+)\s*(\S+)/;
			$pkgsHash{$1} = $2;
		}
	}
	
	print Dumper(%pkgsHash);

	# deinstall found packages
	foreach $key (keys %pkgsHash) {
		$deinstString = $deinstString.' '.$key;
	}
	print "$deinstString\n";

	# check wether packages have been deinstalled
	foreach $key (keys %pkgsHash) {
		if (isPackageInstalled($key)) {
			$notAllUninstalled = 1;
		}
	}
	return (!$notAllUninstalled);
}

###############################################################################
# Checks if the package is installed on the system
# return 1 if yes
# return 0 if no
#
sub isPackageInstalled {
    my $package = shift;
    my $cmd = 'dpkg-query -W -f=\'${db:Status-Abbrev}\' '.$package.' 2>&1';
    my $retString = `$cmd`;
    my $retValue = $?/256;
    if ($retString =~ m/^i[ncHUFWti][\sR]$/) {
        print "package $package is installed: $retString\n";
        return (1);
    } else {
        print "package $package is not installed: $retString\n";
        return (0);
    }
}



if (uninstKernelFlavour('linux-generic')) {
	print "all deinstalled successfully\n";
} else {
	print "not everything was deinstalled successfully\n";
}
