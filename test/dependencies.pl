#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);

my %flavours = (
    "18.04" => {
        "linux-generic" => {
            installCommand => 'linux-generic linux-headers-generic linux-image-generic',
            packages => ['linux-generic', 'linux-headers-generic', 'linux-image-generic', 'linux-headers-4.15.0-*-generic', 'linux-image-4.15.0-*-generic', 'linux-modules-extra-4.15.0-*-generic', 'linux-modules-4.15.0-*-generic'],
            searchCommand => 'linux-generic linux-image-generic linux-headers-generic linux-image-4.15.0-*-generic linux-modules-extra-4.15.0-*-generic linux-image-unsigned-4.15.0-*-generic linux-image-4.15.0-*-generic linux-modules-4.15.0-*-generic',
        },
        "linux-generic-hwe-18.04" => {
            installCommand => 'linux-generic-hwe-18.04 linux-headers-generic-hwe-18.04 linux-image-generic-hwe-18.04',
            packages => ['linux-generic-hwe-18.04', 'linux-headers-generic-hwe-18.04', 'linux-image-generic-hwe-18.04', 'linux-headers-5.4.0-*-generic', 'linux-hwe-5.4-headers-5.4.0-*', 'linux-image-5.4.0-*-generic', 'linux-modules-extra-5.4.0-*-generic', 'linux-modules-5.4.0-*-generic'],
            searchCommand => 'linux-generic-hwe-18.04 linux-image-generic-hwe-18.04',
        },
        "linux-generic-hwe-18.04-edge" => {
            installCommand => 'linux-generic-hwe-18.04-edge linux-headers-generic-hwe-18.04-edge linux-image-generic-hwe-18.04-edge',
            packages => ['linux-generic-hwe-18.04-edge', 'linux-headers-generic-hwe-18.04-edge', 'linux-image-generic-hwe-18.04-edge', 'linux-headers-5.4.0-*-generic', 'linux-hwe-5.4-headers-5.4.0-*', 'linux-image-5.4.0-*-generic', 'linux-modules-extra-5.4.0-*-generic', 'linux-modules-5.4.0-*-generic'],
            searchCommand => 'linux-generic-hwe-18.04-edge linux-image-generic-hwe-18.04-edge',
        },
    },
    "20.04" => {
        "linux-generic" => {
            installCommand => 'linux-generic linux-headers-generic linux-image-generic',
            packages => ['linux-generic', 'linux-headers-generic', 'linux-image-generic', 'linux-headers-5.4.0-*-generic', 'linux-image-5.4.0-*-generic', 'linux-modules-extra-5.4.0-*-generic', 'linux-modules-5.4.0-*-generic'],
            searchCommand => 'linux-generic linux-image-generic linux-modules-extra-5.4.0-*-generic linux-image-unsigned-5.4.0-*-generic linux-modules-5.4.0-*-generic linux-image-5.4.0-*-generic',
        },
        "linux-oem-20.04" => {
            installCommand => 'linux-oem-20.04 linux-oem-20.04b linux-headers-oem-20.04b linux-image-oem-20.04b',
            packages => ['linux-oem-20.04', 'linux-oem-20.04b', 'linux-headers-oem-20.04b', 'linux-image-oem-20.04b', 'linux-headers-5.10.0-*-oem', 'linux-image-5.10.0-*-oem', 'linux-modules-5.10.0-*-oem'],
            searchCommand => 'linux-oem-20.04 linux-oem-20.04b linux-image-oem-20.04b',
        },
        "linux-generic-hwe-20.04" => {
            installCommand => 'linux-generic-hwe-20.04 linux-headers-generic-hwe-20.04 linux-image-generic-hwe-20.04',
            packages => ['linux-generic-hwe-20.04', 'linux-headers-generic-hwe-20.04', 'linux-image-generic-hwe-20.04', 'linux-headers-5.8.0-*-generic', 'linux-hwe-5.8-headers-5.8.0-*', 'linux-image-5.8.0-*-generic', 'linux-modules-extra-5.8.0-*-generic', 'linux-modules-5.8.0-*-generic'],
            searchCommand => 'linux-generic-hwe-20.04 linux-image-generic-hwe-20.04 linux-image-5.8.0-*-generic linux-modules-extra-5.8.0-*-generic linux-image-unsigned-5.4.0-*-generic linux-modules-5.8.0-*-generic',
        },
        "linux-generic-hwe-20.04-edge" => {
            installCommand => 'linux-generic-hwe-20.04-edge linux-headers-generic-hwe-20.04-edge linux-image-generic-hwe-20.04-edge',
            searchCommand => 'linux-generic-hwe-20.04-edge linux-image-generic-hwe-20.04-edge linux-image-5.11.0-*-generic linux-image-unsigned-5.11.0-*-generic linux-modules-extra-5.11.0-25-generic linux-modules-5.11.0-*-generic',
        },
        "linux-tuxedo-20.04-edge" => {
            installCommand => 'linux-tuxedo-20.04-edge linux-headers-tuxedo-20.04-edge linux-image-tuxedo-20.04-edge linux-tools-tuxedo-20.04-edge',
            packages => ['linux-tuxedo-20.04-edge', 'linux-headers-tuxedo-20.04-edge', 'linux-image-tuxedo-20.04-edge', 'linux-tools-tuxedo-20.04-edge', 'linux-headers-5.10.0-*-oem', 'linux-image-5.10.0-*-oem', 'linux-oem-5.10-headers-5.10.0-1034', 'linux-modules-5.10.0-1034-oem', 'linux-tools-5.10.0-1034-oem'],
            searchCommand => 'linux-tuxedo-20.04-edge linux-headers-tuxedo-20.04-edge linux-image-tuxedo-20.04-edge linux-tools-tuxedo-20.04-edge',
        },
    },
);


my $distributionVersion = '20.04';

sub uniq {
	my %seen;
	return grep { !$seen{$_}++ } @_;
}

###############################################################################
# finds which main packages belong to the flavour and puts them into an array
# works only if packages are known and installed on the system
#
sub populateFlavourPackages {
    my $flavour = shift;
    my @packages;
    my $packageLine;
    my $searchCmd;
	my $result;
	my @lines;
	print "$flavour\n";
    $searchCmd = 'dpkg-query -W -f=\'${Depends}\n\' '.$flavours{$distributionVersion}{$flavour}{'installCommand'};
	@packages = split(' ', $flavours{$distributionVersion}{$flavour}{'installCommand'});
	print "srchCmd: $searchCmd\n";
    $result = `$searchCmd`;
	@lines = split /[\n,\s]+/, $result;
	foreach (@lines) {
	    /([a-z0-9\-\_\.]+)/;
	    if ($_ =~ /^linux-.*(?:image|headers|modules|tools)-.*/) {
			print "package: $_\n";
        	$packageLine = $packageLine." $_";
			push @packages, $_;
    	}
	}
    $searchCmd = 'dpkg-query -W -f=\'${Depends}\n\' '.$packageLine;
	print "srchCmd: $searchCmd\n";
    $result = `$searchCmd`;
	@lines = split /[\n,\s]+/, $result;
	foreach (@lines) {
    	/([a-z0-9\-\_\.]+)/;
        if ($_ =~ /^linux-.*(?:image|headers|modules|tools)-.*/) {
			print "package: $_\n";
			push @packages, $_;
        }
	}
	@{ $flavours{$distributionVersion}{$flavour}{'packages'}} = uniq(@packages);
}


populateFlavourPackages('linux-generic-hwe-20.04');

print Dumper(\%flavours);





