# Configuration Interface

TODAY=$(date +"%Y")
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(c\) 1999-$REGEX"
NEW_COPYRIGHT="Copyright \(c\) 1999-$TODAY"

TARGETS=(
	"playground/01-works-on-single-file/code.js"
)
