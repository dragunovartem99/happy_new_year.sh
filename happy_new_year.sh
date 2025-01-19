#!/bin/bash

# Configuration Interface

COPYRIGHT_PATTERN="Copyright (\c\) 1999-****"
MASK_SYMBOL="*"

CURRENT_YEAR=$(date +"%Y") # set manually if your system has invalid date

TARGETS=(
	"."
)


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
}

print_success_message
