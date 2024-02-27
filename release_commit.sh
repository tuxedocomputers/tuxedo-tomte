#!/bin/bash

# check git status
echo "Check git status"
git status

# check
echo "Check for consitency"
./check.sh

echo "Do you wish to proceed based on these informations? (press enter to continue)";
read returnValue #proceeds with enter

# Prompt user for the version
VERSIONSTRING=$(dpkg-parsechangelog | awk '/^Version:/ {print $2}')
echo "Last version is $VERSIONSTRING."
echo "Please enter the version in format (X.X.X): "
read version_tag
commit_message="Version Release $version_tag"

# Set default email if environment variable is not given
if [[ -z "$EMAIL" || -z "$DEBEMAIL" ]]; then
  export DEBEMAIL="tux@tuxedocomputers.com"
fi

branch=$(git symbolic-ref --short HEAD);
commit_hash=$(git log -1 --pretty="%H" -- debian/changelog)
gbp dch --verbose --debian-branch="$branch" --new-version="$version_tag" --since="$commit_hash"
head debian/changelog -n 5
vim debian/changelog
dch --release ""
cp debian/changelog changelog

# Set version tag and perform commit
git add debian/changelog
git add changelog

commit_body=$(dpkg-parsechangelog --show-field Changes | awk 'NR>3')
git commit -m "$commit_message" -m "$commit_body"
git tag $version_tag