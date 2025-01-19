#!/bin/bash

source generate_script.sh

for dir in ./playground/*/; do
	generate_script "${dir}configuration.test.sh" | bash
done
