#!/bin/bash

echo -e "Enter a name for the new test:"
read user_input

TESTS_DIR="tests"
new_test="$TESTS_DIR/$user_input"

mkdir $new_test && cp pieces/mock_config.sh $new_test

echo -e "New test created: $new_test"
