#!/bin/bash

source generate_script.sh

for dir in ./playground/*/; do
	generate_script "${dir}configuration.test.sh" | bash

	actual_diff=$(git -C "$dir" diff)
	expected_diff=$(cat "${dir}git.diff")

	if [ "$actual_diff" == "$expected_diff" ]; then
		echo "Git diff matches the expected output in $dir"
	else
		echo "Git diff does not match the expected output in $dir"
		echo "Expected Diff:"
		echo "$expected_diff"
		echo "Actual Diff:"
		echo "$actual_diff"
	fi
done
