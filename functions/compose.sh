compose() {
	local sources=("$@")

	echo '#!/bin/bash'

	for source in "${sources[@]}"; do
		echo ""
		cat "$source"
	done
}
