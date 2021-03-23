#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);
use Digest::MD5 qw(md5_hex);

my $configDir = '/home/pablo/tuxedo-tomte/test/';

sub initrdChanged {
	my $initrdFile;
	my $md5sum;
	my $md5Store = $configDir.'md5sums';
	my $md5Line;
	my $noChange = 1;

	my %initrdHashFiles;
	my %initrdHashSaved;
	my $FH;
	my $initrdData;
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
		close(BOOTDIR);
		if (open(FH, ">", $md5Store)) {
			foreach $initrdFile (keys %initrdHashFiles) {
				print FH "$initrdFile:$initrdHashFiles{$initrdFile}\n";
			}
			close(FH);
		}
		if (open(FH, "<", $md5Store)) {
			while ($md5Line = <FH>) {
				chop($md5Line);
				($initrdFile, $md5sum) = split /:/, $md5Line;
				print "file: $initrdFile md5: $md5sum\n";
				$initrdHashSaved{$initrdFile} = $md5sum;
			}
			close FH;
		}
		foreach $initrdFile (keys %initrdHashFiles) {
			if ($initrdHashFiles{$initrdFile} ne $initrdHashSaved{$initrdFile}) {
				$noChange = 0;
				last;
			}
		}
	}
	print "result: $noChange\n";
}


# returns 1 if no change
# returns 0 if changed
#
sub sameMD5sums {
	@files = @_;
	my $md5Store = $configDir.'md5sums';
	my %savedFileHashes;
	my %systemFileHashes;
}

initrdChanged();

