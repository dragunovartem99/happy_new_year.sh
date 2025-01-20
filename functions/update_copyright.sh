update_copyright() {
	local old=$1
	local new=$2
	local file=$3

	sed -i -E "s/$old/$new/g" "$file"
}
