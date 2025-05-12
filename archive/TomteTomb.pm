#!/usr/bin/perl -w

use strict qw(vars subs);
use warnings;
use 5.010;

package TomteTomb;

sub oldCheckRequirements {

	# tuxedoplasmaupgrade installation
	my $minPlasmaWorkspaceVersion = '6.0.0';
	readConfigIniValues();
	printLog("distribution: $distribution distributionVersion: $distributionVersion", 'L2', '[DEBUG]');
	if (($distribution =~ /TUXEDO OS/sm) && ($distributionVersion =~ /24\.04.*/sm)) {
		$plasma6Installed = 1;
		printLog("we just assume plasma 6 is installed", 'L2', '[DEBUG]');
	} elsif (($distribution =~ /TUXEDO OS/sm) && (($distributionVersion =~ /2 22\.04.*/sm) || ($distributionVersion =~ /3 22\.04.*/sm))) {
		printLog("found flavour compatible for plasma6", 'L2', '[DEBUG]');

		# check whether plasma6 is installed
		$currentPlasmaWorkspaceVersion = getPackageVersion('plasma-workspace');
		if ((defined($currentPlasmaWorkspaceVersion)) && ($currentPlasmaWorkspaceVersion ne q{})) {
			$versionCompareResult = version_compare($currentPlasmaWorkspaceVersion, $minPlasmaWorkspaceVersion);
			if (! ($versionCompareResult == $NEG_ONE) ) {
				$plasma6Installed = 1;
				printLog("plasma 6 is installed", 'L2', '[DEBUG]');
			} else {
				$plasma6Installed = 0;
				printLog("current plasma version: $currentPlasmaWorkspaceVersion below '6'", 'L2', '[DEBUG]');
			}
		} else {
			$plasma6Installed = 0;
			printLog("could not determine plasma version", 'L2', '[DEBUG]');
		}

		# check whether tuxedoplasmaupgrade should be installed or if it
		# has been installed already in the past because we don't want to install it again
		if ($plasma6Installed == 0) {
			if (((! defined($configIniValues->{tuxedoplasmaupgrade}->{installed})) || ($configIniValues->{tuxedoplasmaupgrade}->{installed} ne '1')) && ($plasma6Installed != 1)) {
				printLog("tuxedoplasmaupgrade not defined in $configIniFile or value ne '1', means it has not been installed before", 'L2', '[DEBUG]');
				$presetModules{tuxedoplasmaupgrade}{required} = 'yes';
				printLog("detected $presetModules{tuxedoplasmaupgrade}{name} issue", 'L1', '[INFO]');
			} elsif ($configIniValues->{tuxedoplasmaupgrade}->{installed} eq '1') {
				printLog("tuxedo-plasma-upgrade has been installed already in the past", 'L2', '[DEBUG]');
			} else {
				printLog("tuxedoplasmaupgrade: undefined state detected", 'L2', '[DEBUG]');
			}
		}
	}
}

###############################################################################
# returns the brand of the CPU (AMD or Intel)
# returns undef if no file was found
#
sub cpuBrand {
	my $infos;
	my $cpuinfo = '/proc/cpuinfo';
	if ( (-e $cpuinfo) && open(FH, '<', '/proc/cpuinfo') ) {
		local $/;
		$infos = <FH>;
		close FH;
		if ($infos =~ /vendor_id\s*:\s*AuthenticAMD/) {
			return ('AMD');
		}
	} else {
		printLog("file $cpuinfo was not found", 'L0');
	}
	return ('Intel');
}


###############################################################################
# checks if filenames md5sum corresponds to the given checksum
# returns 1 if yes
# returns 0 if not or something went wrong
#
sub compareMD5sum {
	my ($filename, $givenHash) = (@_);
	my $hashFile;
	my $FH;
	my $data;
	if (-e $filename) {
		if (open($FH, '<', $filename)) {
			local $/;
			$data = <$FH>;
			close $FH;
			$hashFile = md5_hex($data);
			printLog("file: $filename\ncontent:\n$data", 'L2');
			printLog("hashfile: $hashFile hash: $givenHash", 'L2');
			if ($givenHash eq $hashFile) {
				return (1);
			} else {
				return (0);
			}
		} else {
			printLog ("could not open file $filename", 'L0');
			return (0);
		}
	} else {
		printLog ("file $filename does not exist", 'L0');
		return (0);
	}
}


###############################################################################
# checks if packages given by an array are installed
# @notInstalledPackages = arePackagesInstalled( @packages )
# returns all packages that are not installed
#
sub arePackagesInstalled {
	my @packages = @_;
	my $queryHead = $consoleLanguage."dpkg-query -W -f=\'\${Package} \${db:Status-Abbrev}\\n\'";
	my $queryTail = " 2>&1";
	my $packageQuery = $queryHead;
	my @lines;
	my $retLines;
	my $retValue; 
	my @packagesNotInstalled;
    
	if (scalar(@packages) == 0) {
		return (q{});
	}
	foreach my $package (@packages) {
		$packageQuery .= " $package";
	}

	$packageQuery .= $queryTail;
	$retLines = `$packageQuery`;
	$retValue = $?/$RETVAL_CONVERTER;
	printLog("are packages installed retLines: $retLines retValue $retValue", 'L2', '[DEBUG]');
	@lines = split /\n/sm, $retLines;
	foreach my $line (@lines) {
		# find packages that are not installed
		if ($line =~ /dpkg-query:/sm) {
			$line =~ /.*matching\s(\S+)/sm;
			setPackageInstallStatus( $1, 'not installed' );
			push( @packagesNotInstalled, $1 );
			# find not completely installed or removed packages
		} else {
			$line =~ /(\S+)\s*(\S+)/sm;
			setPackageInstallStatus( $1, $2 );
			# only insert packages to be installed to array
			if ($2 =~ /[uihrp][ncHUFWt]/sm) {
				push( @packagesNotInstalled, $1 );
			}
		}
	}
	return ( @packagesNotInstalled );
}



1;
