#!/usr/bin/perl

use strict qw(vars subs);
use warnings;

use File::Slurp qw(write_file read_file);
use TOML qw(from_toml to_toml);

# load modules configuration 
my %origConfModules_tmp = read_toml_file('config/modules/modules_raw.toml');
my %origConfModules;
foreach my $module (keys %origConfModules_tmp) {
        next if $module eq 'default';

        %{$origConfModules{$module}} = %{$origConfModules_tmp{'default'}};
        @{$origConfModules{$module}}{keys %{$origConfModules_tmp{$module}}} = values %{$origConfModules_tmp{$module}};
}

write_file('config/modules/modules.toml', to_toml(\%origConfModules));
unlink( 'config/modules/modules_raw.toml');


sub read_toml_file {
	my $file_path = shift;

	my $toml_str = read_file($file_path);
	my $toml_hash_ref = from_toml($toml_str);

    # Check if the TOML data was parsed successfully
    if (!defined $toml_hash_ref) {
        die("Failed to parse TOML data from file: $file_path");
    }

	return %$toml_hash_ref;
}
