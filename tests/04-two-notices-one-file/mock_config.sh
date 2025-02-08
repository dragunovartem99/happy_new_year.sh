TODAY="2033"
REGEX="[0-9]{4}"

OLD_COPYRIGHT="Copyright \(c\) 2003-$REGEX. All rights reserved"
NEW_COPYRIGHT="Copyright \(c\) 2003-$TODAY. All rights reserved"

TARGETS=(
	"code.cpp"
)
