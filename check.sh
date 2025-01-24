#!/bin/bash

# Check if a TODO is present in the code
todo_present=0
echo "Checking for TODOs..."
grep -n '#TODO' ./src/tuxedo-tomte && todo_present=1
if [[ $todo_present -gt 0 ]]; then
  echo "Found TODOs!"
fi

# Check if a higher log level is set
higherloglevel_present=0
echo "Checking for higher log level..."
grep -Hn 'my \$logLevel =' ./src/tuxedo-tomte | grep -vE 'my \$logLevel = 0;' && higherloglevel_present=1
if [[ $higherloglevel_present -gt 0 ]]; then
  echo "Found log level higher then 0!"
fi

# Check if a test all modules is set
testallmodules_present=0
echo "Checking for test all modules..."
grep -Hn 'Readonly my \$TEST_ALL_MODULES =>' ./src/tuxedo-tomte | grep -vE 'Readonly my \$TEST_ALL_MODULES => 1;' && testallmodules_present=1
if [[ $testallmodules_present -gt 0 ]]; then
  echo "Found test all modules higher then 0!"
fi





# Run the check_translations script and capture any output
#echo "Checking translations..."
#translation_differences_text=$(perl ./check_translations.pl 2>&1)
#translations_differences=$?

#if [[ $translations_differences -gt 0 ]]; then
#  echo "Found translations differences!"
#  echo "$translation_differences_text"
#fi


# Check if there are syntax errors in the code
syntax_incorrect=0
echo "Checking for syntax errors in src/tuxedo-tomte..."
perl -c ./src/tuxedo-tomte >/dev/null 2>&1 || syntax_incorrect=1
if [[ $syntax_incorrect -gt 0 ]]; then
  echo "Found syntax errors in src/tuxedo-tomte!"
  perl -c ./src/tuxedo-tomte
fi

# Check if there are syntax errors in the code
syntax_incorrect=0
echo "Checking for syntax errors Tomte/Presets.pm..."
perl -c ./Tomte/Presets.pm >/dev/null 2>&1 || syntax_incorrect=1
if [[ $syntax_incorrect -gt 0 ]]; then
  echo "Found syntax errors in Tomte/Presets.pm!"
  perl -c ./Tomte/Presets.pm
fi

# Calculate the exit code as the sum of the variables
exit_code=$((todo_present + higherloglevel_present + testallmodules_present + syntax_incorrect))

# Output the exit code
echo "Exit code: $exit_code"

# Exit with the calculated exit code
exit $exit_code
