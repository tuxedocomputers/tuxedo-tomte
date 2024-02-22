#!/bin/bash

perl build_configurations.pl
perl translations/compile_translation_files.pl

install_file="debian/install"
tmp_file="debian/install.tmp"
translations_install="translations/locale/install"

{
    while IFS= read -r line; do
        if [[ $line == translations\/locale/* ]]; then
            continue
        fi
        echo "$line"
    done < "$install_file"

    # Add the content of another file
    cat "$translations_install"

} > "$tmp_file"

rm "$install_file"
mv "$tmp_file" "$install_file"


VERSIONSTRING=$(dpkg-parsechangelog | awk '/^Version:/ {print $$2}')
sed -i "s|API-Change.Feature-Release.Hotfix-Release|$VERSIONSTRING|" src/tuxedo-tomte
dpkg-buildpackage -uc -us -b