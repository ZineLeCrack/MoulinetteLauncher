#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

executable="./ft_tail"
src_dir="ex02"

cd "$src_dir"
make > "$script_dir/user_output";

if [[ $? -ne 0 ]]; then

	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> DOES NOT COMPILE <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"

else

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 40 "$script_dir/test.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" > "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 1 "$script_dir/no_perm.txt" "$script_dir/test.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" >> "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 60 < "$script_dir/test.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" >> "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 5 "$script_dir/error.txt" "$script_dir/test.txt" "$script_dir/test.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" >> "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	chmod 000 "$script_dir/no_perm.txt"

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 42 "$script_dir/test.txt" "$script_dir/no_perm.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" >> "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 0 "$script_dir/no_perm.txt" "$script_dir/test.txt" "$script_dir/error.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" >> "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 4654374834737843454347373 "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" >> "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 34272d34234324 "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" >> "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	echo -n "stdin  : " > "$script_dir/user_stdin_output"
	echo -n "stderr : " > "$script_dir/user_stderr_output"
	"$executable" -c 744787447878 "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" "$script_dir/test.txt" >> "$script_dir/user_stdin_output" 2>> "$script_dir/user_stderr_output"
	cat "$script_dir/user_stdin_output" "$script_dir/user_stderr_output" >> "$script_dir/user_output"
	echo "Exit status:" $? >> "$script_dir/user_output"

	echo >> "$script_dir/user_output"

	chmod 644 "$script_dir/no_perm.txt"

	diff -au --color=always "$script_dir/user_output" "$script_dir/expected_output"

	if [[ $? -ne 0 ]]; then

		echo
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
		echo -e "${RED}Diff KO :(${RESET}"

		valgrind "$executable" -c 42 "$script_dir/test.txt" 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" -c 42 "$script_dir/test.txt" 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts" && \
		valgrind --track-fds=yes "$executable" -c 42 "$script_dir/test.txt" 2>&1 | grep -q "FILE DESCRIPTORS: 3 open (3 std) at exit."

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			valgrind --track-fds=yes --trace-children=yes --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable"
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"

		fi

	else

		valgrind "$executable" -c 42 "$script_dir/test.txt" 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" -c 42 "$script_dir/test.txt" 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts" && \
		valgrind --track-fds=yes "$executable" -c 42 "$script_dir/test.txt" 2>&1 | grep -q "FILE DESCRIPTORS: 3 open (3 std) at exit."

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			valgrind --track-fds=yes --trace-children=yes --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable" -c 42 "$script_dir/test.txt"
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"

		else 

			norminette -R CheckForbiddenSourceHeader | grep "Error" > "$script_dir/user_output"

			if [[ $? -eq 0 ]]; then

				echo -e "$RED"
				norminette -R CheckForbiddenSourceHeader | grep "Error"
				echo -e "$RESET"
				echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
				echo -e "${RED}Norm check KO :(${RESET}"

			else

				echo
				echo -e "${GREEN}Diff OK :)${RESET}"
				echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"

	fi fi fi

	make fclean > "$script_dir/user_output"
	rm -f "$script_dir/user_output" "$script_dir/user_stdin_output" "$script_dir/user_stderr_output"
fi
