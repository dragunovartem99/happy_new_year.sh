# Program Execution

find "${TARGETS[@]}" -type f | while read -r file; do
	update_copyright_year "$file"
done

print_success_message
