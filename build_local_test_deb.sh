#!/bin/bash
set -e

# Check the current 
echo "Checking tomte..."
./check.sh

echo "Do you wish to proceed based on these informations? (press enter to continue)";
read returnValue #proceeds with enter

# Save the original directory
original_directory="$PWD"
echo "Original directory: $original_directory"

# Set the build directory path
build_directory="/tmp/tuxedo-tomte/build_local_test_deb"
echo "Build directory: $build_directory"

# Create the build directory if it doesn't exist
echo "Creating build directory..."
mkdir --verbose --parents "$build_directory"

# Copy the contents of the original directory to the build directory
echo "Copying contents of original directory to build directory..."
cp --recursive "$original_directory" "$build_directory"

# Change directory to the build directory
echo "Changing to build directory..."
cd "$build_directory"/"$(basename "$original_directory")"

# Log the current version
VERSIONSTRING=$(dpkg-parsechangelog | awk '/^Version:/ {print $2}')
echo "Current version: $VERSIONSTRING"

# Extract version details for creating test version
BASE_VERSION=$(echo "$VERSIONSTRING" | awk -F- '{print $1}')
BRANCH_NAME=$(git branch --show-current)
BRANCH_SHORT=$(echo "$BRANCH_NAME" | awk -F- '{print $1}')
TIMESTAMP=$(git log -1 --format="%at" | xargs -I{} date -d @{} +"%Y%m%d-%H%M%S")
TEST_VERSION="$BASE_VERSION-test-$BRANCH_SHORT-$TIMESTAMP"
commit_hash=$(git log -1 --pretty="%H" -- debian/changelog)
export DEBEMAIL="tux@tuxedocomputers.com"

# Generate a new entry in the debian changelog file
echo "Generating new entry in debian changelog file..."
gbp dch --verbose --debian-branch "$BRANCH_NAME" --new-version $TEST_VERSION --since="$commit_hash"
VERSIONSTRING=$TEST_VERSION

# Run the build script
echo "Running build script..."
./build.sh

# Change back to the original directory
echo "Changing back to original directory..."
cd "$original_directory"
cd ..

# Move the generated .deb files to the original directory
echo "Moving generated .deb files to original directory..."
mv --verbose "$build_directory"/*.deb .

# Remove the temporary build directory
echo "Removing temporary build directory..."
rm --recursive --force /tmp/tuxedo-tomte
