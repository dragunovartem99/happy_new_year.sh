# Configuration

TODAY="2019"
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(c\) 2003-$REGEX OpenAI, Inc."
NEW_COPYRIGHT="Copyright \(c\) 2003-$TODAY OpenAI, Inc."

TARGETS=(
	"tests/03-copyright-symbol/code.py"
)
