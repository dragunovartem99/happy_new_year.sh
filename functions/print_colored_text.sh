declare -A COLORS
COLORS=(
	["green"]="\033[32m"
	["red"]="\033[31m"
	["reset"]="\033[0m"
)

print_colored_text() {
	local color=$1
	local text=$2
	echo -e "${COLORS[$color]}${text}${COLORS["reset"]}"
}
