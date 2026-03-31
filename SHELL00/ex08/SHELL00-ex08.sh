#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
src_dir="ex08"

touch "$script_dir/0"
touch "$script_dir/#1#"
touch "$script_dir/#2~"
touch "$script_dir/3~"
mkdir "$script_dir/#4#"
touch "$script_dir/#4#/5"
touch "$script_dir/#4#/#6#"
touch "$script_dir/#4#/#7~"
touch "$script_dir/#4#/8~"

cp "$src_dir/clean" "$script_dir/"
cd "$script_dir/"
eval $(cat "$script_dir/clean") > "$script_dir/user_output"
ls "$script_dir/" >> "$script_dir/user_output"
ls "$script_dir/#4#" >> "$script_dir/user_output"

diff -au --color=always "$script_dir/user_output" "$script_dir/expected_output" && \
! grep -qE ";|&&|\|\|" "$script_dir/clean"

if [[ $? -ne 0 ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}Diff KO :(${RESET}"
else
	echo
	echo -e "${GREEN}Diff OK :)${RESET}"
	echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
fi

rm -rf "$script_dir/user_output" "$script_dir/0" "$script_dir/#1#" "$script_dir/#2~" "$script_dir/3~" "$script_dir/#4#" "$script_dir/clean"
