#!/usr/bin/perl -w

use strict qw(vars subs);
use warnings;
use File::Compare;

my %testResults;

# counts occurences of $string in $file
# straps the string from whitespaces
sub countStrings {
	my ($string, $file) = @_;
	my $count = 0;
	my $FH;
	open ($FH,'<', $file);
	# remove whitespaces
	$string =~ s/\s+//g;
	foreach my $line (<$FH>) {
		$line =~ s/\s+//g;
		if ($line =~ /$string/) {
			$count++;;
		}
	}
	return ($count);
}

# checks syntax with "perl -c"
sub checkSyntax {
	my ($file) = @_;
	my $cmd = "perl -c $file";
	`$cmd`;
	my $retValue = $?>>8;
	if ($retValue == 0) {
		return (0); # syntax ok
	} else {
		return (1); # syntax bad
	}
}

# syntax analysis tool using "perlcritic"
sub checkLint {
	my ($file) = @_;
	my $cmd = "perlcritic $file";
	`$cmd`;
	my $retValue = $?>>8;
	# exit code from perlcritic means:
	# 0 = no errors, no problems
	# 1 = something went wrong
	# 2 = some code did not pass the test
	if ($retValue > 0) {
		return (1);
	} else {
		return (0);
	}
}

# checks whether $fileA is equal $fileB
sub checkDiff {
	my ($fileA, $fileB) = @_;
	my $result = compare($fileA,$fileB);
	if ($result == 0) {
	} elsif ($result == 1) {
   	print "file: $fileA and file: $fileB are different!!\n";
		print "they should be the same to continue the checks\n\n";
		return (1);
	} else {
		print "some error has occured comparing the files $fileA and $fileB\n\n";
		return (1);
	}
	return (0);
}

# Check if a "#TODO" is present in the code
print "Checking for TODOs...\n";
$testResults{'TODOs'} = countStrings('#TODO', './src/tuxedo-tomte');
if ($testResults{'TODOs'}) {
	print "Found $testResults{'TODOs'} #TODOs!\n\n";
}

# Check if a higher log level is set
print "Checking for higher log level...\n";
$testResults{'higherloglevel'} = countStrings('$logLevel=0', './src/tuxedo-tomte');
if ($testResults{'higherloglevel'}) {
	print "Found log level higher then 0!\n\n";
}

# Check if a test all modules is set
print "Checking for test all modules...\n";
$testResults{'installAllModules'} = countStrings('Readonlymy$TEST_ALL_MODULES=>1', './src/tuxedo-tomte');
if ($testResults{'installAllModules'}) {
	print "Found test all modules higher then 0!\n\n";
}


# Run the translationsCheck script and capture any output
print "Checking translations...\n";
my $checkTranslationsOutput = `./translationsCheck.pl`;
$testResults{'translations'} = $?;
$testResults{'translations'} =~ s/\s+//;
$testResults{'translations'} = $testResults{'translations'} >> 8;
print "######################################\ntranslations output\n$checkTranslationsOutput";

if ($testResults{'translations'} != 0) {
	print "Found translations differences!\n";
	print "$checkTranslationsOutput\n";
}
print "############### end translations\n";

# check if the current module is same as the one we are testing
# the module has to be installed in the host system for
# the tests to work correctly
$testResults{'PresetsModule'} = checkDiff('Tomte/Presets.pm', '/usr/share/perl5/Tomte/Presets.pm');


# Check if there are syntax errors in the code
print "Checking for syntax errors in src/tuxedo-tomte...\n";
$testResults{'syntaxErrorsTomte'} = checkSyntax('./src/tuxedo-tomte');
if ($testResults{'syntaxErrorsTomte'}) {
	print "Found syntax errors in src/tuxedo-tomte!\n\n";
}

print "Checking for syntax errors Tomte/Presets.pm...\n";
$testResults{'syntaxErrorsPresets'} = checkSyntax('./Tomte/Presets.pm');
if ($testResults{'syntaxErrorsPresets'}) {
	print "Found syntax errors in Tomte/Presets.pm!\n\n";
}

print "Checking for lint errors src/tuxedo-tomte...\n";
$testResults{'lintErrorsTomte'} = checkLint('./src/tuxedo-tomte');
if ($testResults{'lintErrorsTomte'}) {
	print "Found lint errors in src/tuxedo-tomte!\n\n";
}

print "Checking for lint errors Tomte/Presets.pm...\n";
$testResults{'lintErrorsPresets'} = checkLint('./Tomte/Presets.pm');
if ($testResults{'lintErrorsPresets'}) {
	print "Found lint errors in Tomte/Presets.pm!\n\n";
}

# Calculate the exit code as the sum of the variables
my $sumExitCodes = 0;

# print results
print "\nRESULTS\n".
    "errors <=> type\n";
foreach my $key (sort keys %testResults) {
	$sumExitCodes += $testResults{$key};
	print "$testResults{$key} <=> $key\n";
}

# Exit with the calculated exit code
print "\nexit code: $sumExitCodes\n";
exit ($sumExitCodes);
