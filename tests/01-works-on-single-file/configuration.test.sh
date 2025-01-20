# Configuration

TODAY=$(date +"%Y")
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(c\) 2022-$REGEX"
NEW_COPYRIGHT="Copyright \(c\) 2022-$TODAY"

TARGETS=(
	"tests/01-works-on-single-file/code.js"
)
