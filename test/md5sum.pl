#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;

use Data::Dumper qw(Dumper);
use Digest::MD5 qw(md5_hex);

my $files;
my $file;
my $md5sum;
my $md5Store = '/home/pablo/tuxedo-tomte/test/md5sums';
my $line;
my $noChange = 1;

my %initrdHashFiles;
my %initrdHashSaved;

if (opendir(BOOTDIR, '/boot')) {
	while (readdir BOOTDIR) {
		if ($_ =~ /initrd\.img/) {
			local $/ = undef;
			print ("file: $_ ");
			if (open( INITRDFILE, "/boot/$_" ) ) {
				binmode(INITRDFILE);
				my $initrdData = <INITRDFILE>;
				close INITRDFILE;
				$md5sum = md5_hex($initrdData);
				$initrdHashFiles{$_} = $md5sum;
				print "hash: $md5sum\n";
				close(INITRDFILE);
			}
		}
	}
	close(BOOTDIR);
	my $FH;
	if (open($FH, ">", $md5Store)) {
		foreach $file (keys %initrdHashFiles) {
			print "$file:$initrdHashFiles{$file}\n";
			print $FH "$file: $initrdHashFiles{$file}\n";
		}
		close($FH);
	}
	if (open($FH, "<", $md5Store)) {
		while ($line = <$FH>) {
			chop($line);
			($file, $md5sum) = split /:/, $line;
			print "file: $file md5: $md5sum\n";
			$initrdHashSaved{$file} = $md5sum;
		}
	}
	foreach $file (keys %initrdHashFiles) {
		if ($initrdHashFiles{$file} ne $initrdHashSaved{$file}) {
			$noChange = 0;
			last;
		}
	}
}

print "result: $noChange\n";


