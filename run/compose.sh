#!/bin/bash

compose() {
	local config="$1"

	COMPONENTS=(
		$config
		"src/implementation.sh"
		"src/program_execution.sh"
	)

	echo '#!/bin/bash'

	for component in "${COMPONENTS[@]}"; do
		echo ""
		cat "$component"
	done
}
