#!/bin/bash

source functions/compose.sh

for dir in tests/*/; do
	sources=(
		"${dir}mock.sh"
		"functions/update_copyright.sh"
		"pieces/main_program.sh"
	)

	test_script=$(compose ${sources[@]})
	(cd $dir && bash <<< $test_script)

	git diff $dir > "${dir}expected.diff"
	git checkout $dir --quiet
done
