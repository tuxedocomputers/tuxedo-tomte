#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;
use LWP::Simple;

# for debugging
use Data::Dumper;

my $repoList = '../misc/repolist.txt';
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
		if ( /(^http.*\/)(http.*)/ ) {
			@tmpLines = ( $1, $2 );
			foreach $line (@tmpLines) {
				if (defined $_ && $_ ne '') {
					$sourcesListHash{$line} = 0;
				}
			}
		} else {
			if (defined $_ && $_ ne '') {
				$sourcesListHash{$_} = 0;
			}
		}
	}
}



my $url = 'https://launchpad.net/api/1.0/ubuntu/archive_mirrors/';
my $content = get $url;


while ($content =~ /(http_base_url": ")(.*?)"/g) {
	if (defined($_) && $_ ne '') {
		$sourcesListHash{$_} = 0;
	}
}

while ($content =~ /(https_base_url": ")(.*?)"/g) {
	if (defined($_) && $_ ne '') {
		$sourcesListHash{$_} = 0;
	}
}

my $key;

if ( open $FH, '>', $repoList ) {
	foreach $key (keys %sourcesListHash) {
		print $FH "$key\n";
	}
	close $FH;
}
