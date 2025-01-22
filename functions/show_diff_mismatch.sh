show_diff_mismatch() {
	local expected=$1
	local actual=$2

	echo "Expected:" && echo $expected
	echo "Actual:" && echo $actual
}
