#!/bin/bash

# Configuration Interface

TODAY=$(date +"%Y")
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(c\) 1999-$REGEX"
NEW_COPYRIGHT="Copyright \(c\) 1999-$TODAY"

TARGETS=(
	"."
)

# Implementation

update_copyright_year() {
	local file=$1
	sed -i -E "s/$OLD_COPYRIGHT/$NEW_COPYRIGHT/g" "$file"
}

print_success_message() {
cat << "EOF"
.      *    *           *.       *   .                      *     .
               .   .                   __   *    .     * .     *
    *       *         *   .     .    _|__|_        *    __   .       *
  .  *  /\       /\          *        ('')    *       _|__|_     .
       /  \   * /  \  *          .  <( . )> *  .       ('')   *   *
  *    /  \     /  \   .   *       _(__.__)_  _   ,--<(  . )>  .    .
      /    \   /    \          *   |       |  )),`   (   .  )     *
   *   `||` ..  `||`   . *.   ... ==========='`   ... '--`-` ... *    .
EOF
echo "Copyright years updated to $TODAY"
}

## Program Execution

find "${TARGETS[@]}" -type f | while read -r file; do
	update_copyright_year "$file"
done

print_success_message
