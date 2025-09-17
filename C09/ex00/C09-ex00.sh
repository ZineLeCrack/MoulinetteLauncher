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

cd "$src_dir"
bash "libft_creator.sh"
cd ..
/bin/cc -Wall -Wextra -Werror "$script_dir/main.c" "$src_dir/libft.a" -o "$executable"

if [[ $? -ne 0 ]]; then

	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> DOES NOT COMPILE <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"

else

	"$executable" > "$script_dir/user_output"

	diff -au --color=always "$script_dir/user_output" "$script_dir/expected_output"

	if [[ $? -ne 0 ]]; then

		echo
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
		echo -e "${RED}Diff KO :(${RESET}"

		valgrind "$executable" 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts"

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable"
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"

		fi

	else

		valgrind "$executable" 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts"

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable"
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"

		else 

			norminette -R CheckForbiddenSourceHeader "$src_dir/ft_putchar.c" "$src_dir/ft_swap.c" "$src_dir/ft_putstr.c" "$src_dir/ft_strlen.c" "$src_dir/ft_strcmp.c" > "$script_dir/user_output"

			if [[ $? -ne 0 ]]; then

				echo -e "$RED"
				norminette -R CheckForbiddenSourceHeader "$src_dir/ft_putchar.c" "$src_dir/ft_swap.c" "$src_dir/ft_putstr.c" "$src_dir/ft_strlen.c" "$src_dir/ft_strcmp.c" | grep "Error"
				echo -e "$RESET"
				echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
				echo -e "${RED}Norm check KO :(${RESET}"

			else

				echo
				echo -e "${GREEN}Diff OK :)${RESET}"
				echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

	fi fi fi

	rm -f "$executable" "$src_dir/ft_putchar.o" "$src_dir/ft_swap.o" "$src_dir/ft_putstr.o" "$src_dir/ft_strlen.o" "$src_dir/ft_strcmp.o" "$src_dir/libft.a" "$script_dir/user_output"
fi
