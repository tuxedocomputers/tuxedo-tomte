#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;
use File::Copy;

# for debugging
use Data::Dumper;



my $tmpSourcesList = '/tmp/tmpSourcesList.txt';
my @lines;
my %sourcesListHash;
my @tmpLines;
my $line;

system("wget -q -r -L -O $tmpSourcesList -A \'*.txt\' mirrors.ubuntu.com/");
my $FH;
if ( open $FH, "<", $tmpSourcesList ) {
	chomp(@lines = <$FH>);
	close ($FH);
}

foreach (@lines) {
	if ($_ =~ /^http/) {
		$_ =~ s/<.*//;
		chomp;
		if ( /^(.*\/)(http.*)/ ) {
			@tmpLines = ( $1, $2 );
			foreach $line (@tmpLines) {
				$sourcesListHash{$line} = 0;
				print ">>> $line\n";
			}
		} else {
			$sourcesListHash{$_} = 0;
			print ">>> $_\n";
		}
	}
}




