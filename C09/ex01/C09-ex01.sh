#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

executable="$script_dir/output"
src_dir="ex01"

cp "$src_dir/Makefile" "$script_dir"
cd "$script_dir"
make > "$script_dir/user_output"
/bin/cc -Wall -Wextra -Werror -g3 "$script_dir/main.c" "$script_dir/libft.a" -o "$executable"

if [[ $? -ne 0 ]]; then

	echo
	echo -e "${RED}KO :(${RESET}"
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> DOES NOT COMPILE <<<<<<<<<<<<<<<<<<<<<<<$RESET"

else

	"$executable" > "$script_dir/user_output"

	diff -au --color=always "$script_dir/user_output" "$script_dir/expected_output"

	if [[ $? -ne 0 ]]; then

		echo
		echo -e "${RED}Diff KO :(${RESET}"
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

		rm -f "$executable" "$script_dir/user_output" "$script_dir/fclean_all_rules_output" "$script_dir/Makefile" "$script_dir/libft.a" "$script_dir/srcs/*.o"
		exit 0

	fi

	make clean > "$script_dir/user_output"

	ls -l "$script_dir/srcs" | grep -q "\.o"

	if [[ $? -eq 0 ]]; then

		echo
		echo -e "${RED}Rule clean KO :(${RESET}"
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

		rm -f "$executable" "$script_dir/user_output" "$script_dir/fclean_all_rules_output" "$script_dir/Makefile" "$script_dir/libft.a" "$script_dir/srcs/*.o"
		exit 0

	fi

	ls -l "$script_dir" | grep -q "libft\.a"

	if [[ $? -ne 0 ]]; then

		echo
		echo -e "${RED}Rule clean KO :(${RESET}"
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

		rm -f "$executable" "$script_dir/user_output" "$script_dir/fclean_all_rules_output" "$script_dir/Makefile" "$script_dir/libft.a"
		exit 0

	fi

	make > "$script_dir/user_output"
	make fclean >> "$script_dir/fclean_all_rules_output"

	ls -l "$script_dir/srcs" | grep -q "\.o"

	if [[ $? -eq 0 ]]; then

		echo
		echo -e "${RED}Rule fclean KO :(${RESET}"
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

		rm -f "$executable" "$script_dir/user_output" "$script_dir/fclean_all_rules_output" "$script_dir/Makefile" "$script_dir/libft.a" "$script_dir/srcs/*.o"
		exit 0

	fi

	ls -l "$script_dir" | grep -q "libft\.a"

	if [[ $? -eq 0 ]]; then

		echo
		echo -e "${RED}Rule fclean KO :(${RESET}"
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

		rm -f "$executable" "$script_dir/user_output" "$script_dir/fclean_all_rules_output" "$script_dir/Makefile" "$script_dir/libft.a"
		exit 0

	fi

	make >> "$script_dir/fclean_all_rules_output"

	make re > "$script_dir/user_output"

	diff -au --color=always "$script_dir/user_output" "$script_dir/fclean_all_rules_output"

	if [[ $? -ne 0 ]]; then

		echo
		echo -e "${RED}Rule re KO :(${RESET}"
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

		make fclean > "$script_dir/user_output"
		rm -f "$executable" "$script_dir/user_output" "$script_dir/fclean_all_rules_output" "$script_dir/Makefile"
		exit 0

	fi
	
	echo
	echo -e "${GREEN}Diff OK :)${RESET}"
	echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

	make fclean > "$script_dir/user_output"
	rm -f "$executable" "$script_dir/user_output" "$script_dir/fclean_all_rules_output" "$script_dir/Makefile"
fi
