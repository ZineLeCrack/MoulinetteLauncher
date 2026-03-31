#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
src_dir="ex07"

diff -u "$script_dir/a" "$src_dir/b" > "$script_dir/sw.diff"
cp "$script_dir/a" "$script_dir/test"
patch -s "$script_dir/test" < "$script_dir/sw.diff"

diff -au --color=always "$script_dir/test" "$src_dir/b"

if [[ $? -ne 0 ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}Diff KO :(${RESET}"
else
	echo
	echo -e "${GREEN}Diff OK :)${RESET}"
	echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
fi

rm -rf "$script_dir/user_output" "$script_dir/sw.diff" "$script_dir/test"
