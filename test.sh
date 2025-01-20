#!/bin/bash

source generate_script.sh

print_red_text() {
	local text=$1
	echo -e "\033[31m${text}\033[0m"
}

print_green_text() {
	local text=$1
	echo -e "\033[32m${text}\033[0m"
}

on_test_failed() {
	local dir=$1
	print_red_text "Git diff does not match the expected output in $dir"
}

on_test_passed() {
	local dir=$1
	print_green_text "✓ Git diff matches the expected output in $dir"
	git checkout $dir --quiet
}

for dir in playground/*/; do
	generate_script "${dir}configuration.test.sh" | bash

	actual_diff=$(git diff $dir)
	expected_diff=$(cat "${dir}git.diff")

	if [ "$actual_diff" == "$expected_diff" ]; then
		on_test_passed $dir
	else
		on_test_failed $dir
		echo "Expected Diff:"
		echo "$expected_diff"
		echo "Actual Diff:"
		echo "$actual_diff"
	fi
done
