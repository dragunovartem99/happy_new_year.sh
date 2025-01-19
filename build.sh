#!/bin/bash

BUILDING_BLOCKS=(
	"src/configuration_interface.sh"
	"src/implementation.sh"
	"src/program_execution.sh"
)

{
	echo '#!/bin/bash'

	for block in "${BUILDING_BLOCKS[@]}"; do
		echo ""
		cat "$block"
	done
} > happy_new_year.sh

chmod +x happy_new_year.sh
