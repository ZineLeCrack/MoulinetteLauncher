#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
src_dir="ex06"

touch "$script_dir/ignore0" "$script_dir/ignore1"
cp "$src_dir/git_ignore.sh" "$script_dir/"
cd  $script_dir
bash "$script_dir/git_ignore.sh" > "$script_dir/user_output"

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

rm -rf "$script_dir/user_output" "$script_dir/git_ignore.sh" "$script_dir/ignore0" "$script_dir/ignore1"
