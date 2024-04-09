#!/bin/bash

perl build_configurations.pl


VERSIONSTRING=$(dpkg-parsechangelog | awk '/^Version:/ {print $$2}')
sed -i "s|API-Change.Feature-Release.Hotfix-Release|$VERSIONSTRING|" src/tuxedo-tomte
dpkg-buildpackage -uc -us -b