find "${TARGETS[@]}" -type f | while read -r file; do
	update_copyright "$OLD_COPYRIGHT" "$NEW_COPYRIGHT" "$file"
done
