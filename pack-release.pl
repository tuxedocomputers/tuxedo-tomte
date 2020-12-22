#!/usr/bin/perl -w
use strict qw(vars subs);
use warnings;
use Cwd;

use Data::Dumper qw(Dumper);

my $cwd = getcwd();
print "cwd $cwd\n";
my $package = 'tuxedo-tomte';
my $prefix;
my $version;
my $changelog = "$cwd"."/debian/changelog";
my $branch = `git symbolic-ref --short HEAD`;
my $gbpConf = "$cwd"."/debian/gbp.conf";
$branch =~ s/\s//g;


print "on branch: $branch<\n\n";

# get version number
print "Old version:\n";
open (CL, $changelog) || die "could not open $changelog\n";
print scalar <CL>;
close CL;
print "New version number? (x.x.x) or test-release (x.x.x-x)\n";
$version = <>;
chomp($version);
$version =~ /^\d+\.\d+\.\d+.*$/ || die "wrong version format\n";
print "got version: $version\n";
$prefix = $package.'_'.$version;
print "prefix: $prefix\n";

system("gbp dch --verbose --debian-branch $branch --new-version=$version");
system("vim $changelog");
system("cp $changelog $cwd/");

system('git add .');
system('git commit -m \'packing\'');
system('git push');

print ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
print ">>> building tarball\n";
system("git archive --format=tar --prefix=$prefix/ HEAD | gzip -c > ../$prefix.orig.tar.gz");
print ">>> check tarball content\n";
system("tar tvf ../$prefix.orig.tar.gz");
system("git branch -D debian-debian");
system("git branch -D debian-upstream");
print ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>";
system("git checkout --orphan debian-upstream");
system("git rm --cached -r .");
system("git clean -xfd");
system("git commit --allow-empty -m 'Start of debian branches.'");
system("git checkout -b debian-debian");
system("git checkout $branch -- debian/");
system("git add .");
system("git commit -m 'packing'");

my $str = <<END;
[DEFAULT]
upstream-branch=debian-upstream
debian-branch=debian-debian
END

open(FH, '>', $gbpConf);
print FH $str;
close(FH);

system("git add .");
system("git commit -m 'packing'");
system("gbp import-orig --no-interactive ../$prefix.orig.tar.gz");
system("gbp buildpackage -us -uc");

# return to original branch
system("git checkout $branch");
