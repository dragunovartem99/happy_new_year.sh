#!/bin/bash

source functions/compose.sh
source functions/print_red_text.sh
source functions/print_green_text.sh
source functions/show_diff_mismatch.sh

for dir in tests/*/; do
	sources=(
		"${dir}mock_config.sh"
		"functions/update_copyright.sh"
		"pieces/main_program.sh"
	)

	test_script=$(compose ${sources[@]})
	(cd $dir && bash <<< $test_script)

	actual_diff=$(git diff $dir)
	expected_diff=$(cat "${dir}expected.diff")

	if [ "$actual_diff" == "$expected_diff" ]; then
		print_green_text "✓ Git diff matches the expected output in $dir"
		git checkout $dir --quiet
	else
		print_red_text "✗ Git diff does not match the expected output in $dir"
		show_diff_mismatch "$expected_diff" "$actual_diff"
	fi
done
