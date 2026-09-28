#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
src_dir="ex02"

tar -xf "$src_dir/exo2.tar"
ls -l --time-style=long-iso test1 test3 test4 test5 test6 | grep test | awk '{print $1, $2, $5, substr($6, length($6) - 5), $7, $8}' > "$script_dir/user_output"
ls -l --time-style=long-iso | awk '{print $1, $2, $3, $4, $5, $6, $7, $8}' | grep -E "test0|test2" | awk '{print $1, $2, substr($6, length($6) - 5), $7, $8}' >> "$script_dir/user_output"

diff -au --color=always "$script_dir/user_output" "$script_dir/expected_output"

if [[ $? -ne 0 ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}Diff KO :(${RESET}"
else
	echo
	echo -e "${GREEN}Diff OK :)${RESET}"
	echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
fi

rm -rf "$script_dir/user_output" test*
