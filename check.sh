#!/bin/bash

# Check if a TODO is present in the code
todo_present=0
echo "Checking for TODOs..."
grep -n '#TODO' ./src/tuxedo-tomte && todo_present=1
if [[ $todo_present -gt 0 ]]; then
  echo "Found TODOs!"
  echo $(grep -n '#TODO' ./src/tuxedo-tomte)
fi

# Run the check_translations script and capture any output
echo "Checking translations..."
translation_differences_text=$(perl ./translations/check_translations.pl 2>&1)
translations_differences=$?

if [[ $translations_differences -gt 0 ]]; then
  echo "Found translations differences!"
  echo "$translation_differences_text"
fi


# Check if there are syntax errors in the code
syntax_incorrect=0
echo "Checking for syntax errors..."
perl -c ./src/tuxedo-tomte >/dev/null 2>&1 || syntax_incorrect=1
if [[ $syntax_incorrect -gt 0 ]]; then
  echo "Found syntax errors!"
  echo $(perl -c ./src/tuxedo-tomte)
fi

# Calculate the exit code as the sum of the variables
exit_code=$((todo_present + higherloglevel_present + syntax_incorrect))

# Output the exit code
echo "Exit code: $exit_code"

# Exit with the calculated exit code
exit $exit_code
