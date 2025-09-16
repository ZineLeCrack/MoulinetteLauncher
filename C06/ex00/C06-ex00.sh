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

/bin/cc -Wall -Wextra -Werror "$src_dir/ft_print_program_name.c" -o "$executable"

if [[ $? -ne 0 ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> DOES NOT COMPILE <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	"$executable" test >> "$script_dir/user_output"
	rm -f "$executable"

	executable="$script_dir/test"
	/bin/cc -Wall -Wextra -Werror "$src_dir/ft_print_program_name.c" -o "$executable"
	"$executable" non non non >> "$script_dir/user_output"
	rm -f "$executable"

	executable="$script_dir/ooOOoo"
	/bin/cc -Wall -Wextra -Werror "$src_dir/ft_print_program_name.c" -o "$executable"
	"$executable" pourquoi >> "$script_dir/user_output"
	rm -f "$executable"

	executable="$script_dir/4242"
	/bin/cc -Wall -Wextra -Werror "$src_dir/ft_print_program_name.c" -o "$executable"
	"$executable" "que faire ?" >> "$script_dir/user_output"
	rm -f "$executable"

	executable="$script_dir/Hello_World"
	/bin/cc -Wall -Wextra -Werror "$src_dir/ft_print_program_name.c" -o "$executable"
	"$executable" "" >> "$script_dir/user_output"
	rm -f "$executable"

	len=${#HOME}

	diff -au --color=always <(cut -c$((len+1))- "$script_dir/user_output") <(cut -c$((len+1))- "$script_dir/expected_output")

	if [[ $? -ne 0 ]]; then
		echo
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
		echo -e "${RED}Diff KO :(${RESET}"
	else
		echo
		echo -e "${GREEN}Diff OK :)${RESET}"
		echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
	fi

	rm -f "$script_dir/user_output"
fi
