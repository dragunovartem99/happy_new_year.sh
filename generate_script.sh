#!/bin/bash

generate_script() {
	local config="$1"

	BUILDING_BLOCKS=(
		$config
		"src/implementation.sh"
		"src/program_execution.sh"
	)

	echo '#!/bin/bash'

	for block in "${BUILDING_BLOCKS[@]}"; do
		echo ""
		cat "$block"
	done
}
