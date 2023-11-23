use 5.010;
use warnings;
use FindBin qw($RealBin);
use File::Find;
use File::Basename;
use File::Path qw(make_path remove_tree);

my $script_directory = $RealBin;

my $source_directory = $script_directory . '/locale_raw';
my $destination_directory =  $script_directory . '/locale';

sub compile_po_file_to_mo_file {
	my $po_file = $_;
	if ($po_file =~ /\.po$/) {
		my $mo_file = $po_file;
		$mo_file =~ s/\.po$/.mo/;

		my $relative_path = $File::Find::dir;
		$relative_path =~ s/\Q$source_directory//;
		my $dest_path = "$destination_directory$relative_path";
		make_path($dest_path);

		system("msgfmt --output-file=$dest_path/$mo_file $File::Find::name");
	}
}

remove_tree($destination_directory);
find(\&compile_po_file_to_mo_file, $source_directory);

print "Compilations of *.po in $source_directory to *.mo in $destination_directory is complete.\n";
