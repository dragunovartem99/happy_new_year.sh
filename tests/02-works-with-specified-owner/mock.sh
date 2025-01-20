# Configuration

TODAY="2020"
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(c\) 2003-$REGEX OpenAI, Inc.Copyright"
NEW_COPYRIGHT="Copyright \(c\) 2003-$TODAY OpenAI, Inc.Copyright"

TARGETS=(
	"tests/02-works-with-specified-owner/code.py"
)
