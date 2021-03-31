#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);
use Digest::MD5 qw(md5_hex);


my %initrdHashSaved;
my %initrdHashFiles;

my $configDir = '/home/pablo/tuxedo-tomte/test/';
my %md5StoreHash;
my $md5Store = $configDir.'md5sums';
my %md5FilesHash;


sub loadMD5Store {
	my $md5Line;
	if (open(FH, "<", $md5Store)) {
		while ($md5Line = <FH>) {
			chop($md5Line);
			my ($key, $val) = split /:/, $md5Line;
			$initrdHashSaved{$key} = $val;
		}
		close FH;
		print "load sub:\n";
		print Dumper(%initrdHashSaved);
		return 1;
	} else {
		print "no readable md5sum file available\n";
		return 0;
	}
}

sub readInitrdMD5Files {
	my $initrdData;
	my $md5sum;
	if (opendir(BOOTDIR, '/boot')) {
		while (readdir BOOTDIR) {
			if ($_ =~ /initrd\.img/) {
				local $/ = undef;
				if (open( INITRDFILE, "/boot/$_" ) ) {
					binmode(INITRDFILE);
					$initrdData = <INITRDFILE>;
					$md5sum = md5_hex($initrdData);
					$initrdHashFiles{$_} = $md5sum;
					close(INITRDFILE);
				}
			}
		}
		close BOOTDIR;
	}
	print "read sub:\n";
	print Dumper(%initrdHashFiles);
}

sub writeMD5Store {
	print Dumper(%initrdHashFiles);
	if (open(FH, ">", $md5Store)) {
		foreach my $key (keys %initrdHashFiles ) {
			print FH "$key:$initrdHashFiles{$key}\n";
		}
		close(FH);
	} else {
		print "could not open $md5Store\n";
	}
}

# returns 1 if found non equal or missing value
# returns 0 if all values are the same
sub newInitrdFiles {
	foreach my $key (keys %initrdHashFiles) {
		if (!(exists $initrdHashSaved{$key}) || ($initrdHashFiles{$key} ne $initrdHashSaved{$key})) {
			return (1);
		}
	}
	return (0);
}



loadMD5Store();
readInitrdMD5Files();
if( newInitrdFiles() ) {
	print "non equal or missing value found\n";
} else {
	print "everything is the same\n";
}
writeMD5Store();
