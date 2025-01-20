# Configuration

TODAY="2011"
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright 2005-$REGEX"
NEW_COPYRIGHT="Copyright 2005-$TODAY"

TARGETS=(
	"tests/01-simplest-case/code.go"
)
