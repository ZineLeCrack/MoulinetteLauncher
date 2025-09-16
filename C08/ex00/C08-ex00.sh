#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

executable="$script_dir/output"
src_dir="ex00"

cp "ex00/ft.h" "$script_dir"
/bin/cc -Wall -Wextra -Werror "$script_dir/main.c" -o "$executable"

if [[ $? -ne 0 ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> DOES NOT COMPILE <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else

	echo
	echo -e "${GREEN}Diff OK :)${RESET}"
	echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

fi

rm -f "$executable" "$script_dir/ft.h"
