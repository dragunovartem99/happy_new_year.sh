# Configuration

TODAY="2025"
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(2022-$REGEX\)"
NEW_COPYRIGHT="Copyright \(2022-$TODAY\)"

TARGETS=(
	"tests/02-years-in-brackets/code.js"
)
