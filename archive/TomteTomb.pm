#!/usr/bin/perl -w

use strict qw(vars subs);
use warnings;
use 5.010;

package TomteTomb;

# for OLED backlight and edid decrypt
use FindBin qw($Bin);
use lib "$Bin/.";
use Parse::EDID qw(parse_edid);

use Readonly;

# for console language and locale
my $consoleLanguage = 'LANG=C;LANGUAGE=C;';

Readonly my $RETVAL_CONVERTER => 256;



###############################################################################
# searches the sysfs subdirectory for active monitor entries
# and returns them as an array
#
sub findActiveEDIDs {
	my $cards_dir = '/sys/class/drm';
	my $dir_handle;
	my @edidfile;
	my $enabledFileContent;
	my $statusFileContent;

	my $edidTrigger = 0;

	if ( !opendir ($dir_handle, $cards_dir)) {
		printLog("Err: $!", 'L1', '[WARN]');
		printLog("unable to open $cards_dir: $!", 'L1', '[WARN]');
		return @edidfile;
	}
	my @FILES = grep { $_ ne q{.} && $_ ne q{..} } readdir($dir_handle);
	foreach my $file (@FILES) {
		my $path = "$cards_dir/$file";
		if ( -d $path ) {
			my $enabledFile = "$path/enabled";
			if ( -e $enabledFile ) {                                                                       
				if (open(my $fh1, '<', $enabledFile)) {
					$enabledFileContent = <$fh1>;
					if (! close($fh1)) {
						printLog("Couldn't close $enabledFile", 'L0', '[ERROR]');
					}
					if ($enabledFileContent =~ /enabled/sm) {
						my $statusFile = "$path/status";
						if ( -e $statusFile ) {
							if (!-e $file) {
								return (0);
							}
							my $fh2;
							if (! open($fh2, '<', $statusFile)) {
								printLog("Couldn't open $statusFile", 'L0', '[ERROR]');
							}
							$statusFileContent = <$fh2>;
							if (! close($fh2)) {
								printLog("Couldn't close $enabledFile", 'L0', '[ERROR]');
							}
							if ($statusFileContent =~ /connected/sm) {
								push @edidfile, "$path/edid";
								$edidTrigger = 1;
							}
						}
					}
				} else {
					printLog("Couldn't open $enabledFile", 'L0', '[ERROR]');
				}
			} else {
				printLog("file $enabledFile not found", 'L2', '[WARN]');
			}
		}
	}
	if (! $edidTrigger ) {
		printLog('no enabled and active edid files found!', 'L1', '[WARN]');
	}
	return @edidfile;
}



###############################################################################                            
# gets valid edid files
# converts edid data into an array of hash references to presetModules
#
sub getEDIDData {
	my @edidFiles = findActiveEDIDs();
	my @edidRefs;
	my $FH;
	my $fileContent;
	foreach ( @edidFiles ) {
		if ( (-e $_) && open($FH, '<', $_) ) {
			$fileContent = do { local $/; <$FH> };
			if (! close($FH)) {
				printLog("could not close $_ $!", 'L0', '[ERROR]');
			}
			push @edidRefs, parse_edid($fileContent);
		} else {
			printLog("Err: $!", 'L1', '[ERROR]');
			printLog("could not open file $_ $!", 'L0', '[ERROR]');
		}
	}
	# returns array of hash references to module
	return @edidRefs;
}



###############################################################################
# returns 1 if the display described by a string is connected, otherwise 0
# the requesting string is build by appending the following data as returned by
# edid-decode
# manufacturer_name Model product_code Serial Number serial_number
# the values from manufacturer_name, product_code and serial_number are
# extracted by Parse::EDID
#
sub isDisplayPresent {
	my $edidSearchString = shift;
	my @edidRefs = getEDIDData();
	my $edidInfo;
	if (@edidRefs == 0) {                                                                                  
		return (0);
	} else {
		foreach my $edidData (@edidRefs) {
			$edidInfo = $$edidData{manufacturer_name}." Model ".$$edidData{product_code}." Serial Number ".$$edidData{serial_number};
			if ($edidInfo =~ /$edidSearchString/sm) {
				return (1);
			}
		}
	}
	printLog("edid string not found", 'L1', '[WARN]');
	return (0);
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
