#!/bin/bash

source functions/compose.sh
source functions/print_red_text.sh
source functions/print_green_text.sh

for dir in tests/*/; do
	SOURCES=(
		"${dir}mock.sh"
		"functions/update_copyright.sh"
		"pieces/main_program.sh"
	)

	compose ${SOURCES[@]} | bash

	actual_diff=$(git diff $dir)
	expected_diff=$(cat "${dir}expected.diff")

	if [ "$actual_diff" == "$expected_diff" ]; then
		print_green_text "✓ Git diff matches the expected output in $dir"
		git checkout $dir --quiet
	else
		print_red_text "Git diff does not match the expected output in $dir"
		echo "Expected Diff:"
		echo "$expected_diff"
		echo "Actual Diff:"
		echo "$actual_diff"
	fi
done
