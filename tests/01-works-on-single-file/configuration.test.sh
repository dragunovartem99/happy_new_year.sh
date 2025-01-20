# Configuration Interface

TODAY=$(date +"%Y")
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(c\) 1999-$REGEX"
NEW_COPYRIGHT="Copyright \(c\) 1999-$TODAY"

TARGETS=(
	"tests/01-works-on-single-file/code.js"
)
