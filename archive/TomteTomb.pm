#!/usr/bin/perl -w

use strict qw(vars subs);
use warnings;
use 5.010;

package TomteTomb;

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


1;