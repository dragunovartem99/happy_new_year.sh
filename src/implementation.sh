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
