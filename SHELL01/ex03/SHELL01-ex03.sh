#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
src_dir="ex03"

touch "$script_dir/test0"
touch "$script_dir/test1"
mkdir "$script_dir/testd"
touch "$script_dir/testd/test2"
touch "$script_dir/testd/test3"

chmod 777 "$src_dir/count_files.sh"
cp "$src_dir/count_files.sh" "$script_dir/count_files.sh"
cd "$script_dir/"
./count_files.sh > "$script_dir/user_output"

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

rm -rf "$script_dir/user_output" "$script_dir/test0" "$script_dir/test1" "$script_dir/testd"
