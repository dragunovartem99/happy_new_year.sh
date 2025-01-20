#!/bin/bash

TODAY=$(date +"%Y")
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(c\) 1999-$REGEX"
NEW_COPYRIGHT="Copyright \(c\) 1999-$TODAY"

TARGETS=(
	"."
)

update_copyright() {
	local old=$1
	local new=$2
	local file=$3

	sed -i -E "s/$old/$new/g" "$file"
}

print_ascii_art() {
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
}

find "${TARGETS[@]}" -type f | while read -r file; do
	update_copyright "$OLD_COPYRIGHT" "$NEW_COPYRIGHT" "$file"
done

print_ascii_art
echo "Copyright years updated to $TODAY"
