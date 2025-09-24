#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

executable="./do-op"
src_dir="ex05"

cd "$src_dir"
make > "$script_dir/user_output";

if [[ $? -ne 0 ]]; then

	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> DOES NOT COMPILE <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"

else

	echo ">>>>>>>>>> 42 + 21 <<<<<<<<<<" > "$script_dir/user_output"
	"$executable" 42 "+" 21 >> "$script_dir/user_output"
	echo ">>>>>>> 42 + 21 - 64 <<<<<<<<" >> "$script_dir/user_output"
	"$executable" 42 "+" 21 "-" 64 >> "$script_dir/user_output"
	echo ">>>>>>>>>>> -7 * +6 <<<<<<<<<" >> "$script_dir/user_output"
	"$executable" -7 "*" +6 >> "$script_dir/user_output"
	echo ">>>>>>>>>>> 35 / 8 <<<<<<<<<<" >> "$script_dir/user_output"
	"$executable" 35 "/" 8 >> "$script_dir/user_output"
	echo ">>>>>>>> 21 % +--+5 <<<<<<<<<" >> "$script_dir/user_output"
	"$executable" 21 "%" +--+5 >> "$script_dir/user_output"
	echo ">>>>>>>>> --21 - 63 <<<<<<<<<" >> "$script_dir/user_output"
	"$executable" --21 "-" 63 >> "$script_dir/user_output"
	echo ">>>>>>>> +++42 / 0 <<<<<<<<<<" >> "$script_dir/user_output"
	"$executable" +++42 "/" 0 >> "$script_dir/user_output"
	echo ">>>>>>>>>> 42 % 0 <<<<<<<<<<<" >> "$script_dir/user_output"
	"$executable" 42 "%" 0 >> "$script_dir/user_output"
	echo ">>>>>>>>>> 42 = 0 <<<<<<<<<<<" >> "$script_dir/user_output"
	"$executable" 42 "=" 0 >> "$script_dir/user_output"
	echo ">>>>>>>>>> 42 ** 2 <<<<<<<<<<" >> "$script_dir/user_output"
	"$executable" 42 "**" 2 >> "$script_dir/user_output"

	diff -au --color=always "$script_dir/user_output" "$script_dir/expected_output"

	if [[ $? -ne 0 ]]; then

		echo
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
		echo -e "${RED}Diff KO :(${RESET}"

		valgrind "$executable" 42 "+" 21 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" 42 "+" 21 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts"

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			valgrind --track-fds=yes --trace-children=yes --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable" 42 "+" 21
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"

		fi

	else

		valgrind "$executable" 42 "+" 21 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" 42 "+" 21 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts"
		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			valgrind --track-fds=yes --trace-children=yes --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable" 42 "+" 21
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"

		else 

			norminette -R CheckForbiddenSourceHeader | grep "Error"

			if [[ $? -eq 0 ]]; then

				echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
				echo -e "${RED}Norm check KO :(${RESET}"

			else

				echo
				echo -e "${GREEN}Diff OK :)${RESET}"
				echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

	fi fi fi

	make fclean > "$script_dir/user_output"
	rm -f "$script_dir/user_output"
fi
