#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

executable="$script_dir/output"
src_dir="ex03"

/bin/cc -Wall -Wextra -Werror "$src_dir/ft_div_mod.c" "$script_dir/main.c" -o "$executable"

if [[ $? -ne 0 ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>> Does not compile <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	"$executable" > "$script_dir/user_output"

	diff -a "$script_dir/user_output" "$script_dir/expected_output"

	if [[ $? -ne 0 ]]; then
		echo
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>> Diff detected <<<<<<<<<<<<<<<<<<<<<<<<$RESET"
		echo -e "${RED}Diff KO :(${RESET}"
	else
		echo
		echo -e "${GREEN}Diff OK :)${RESET}"
		echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
	fi

	rm -f "$executable" "$script_dir/user_output"
fi
