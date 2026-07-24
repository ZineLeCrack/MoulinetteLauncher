#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex03"
executable="$PWD/""$src_dir/""ft_hexdump"

cd "$src_dir"
make > "$script_dir/user_output"

if [[ $? -ne 0 ]]; then

	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> DOES NOT COMPILE <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
	rm -f "$script_dir/user_output"
	grade=0

else

	cd "$script_dir"
	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" "test.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" > "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" "no_perm.txt" "test.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" < "test.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" -C "error.txt" "test.txt" "test.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	chmod 000 "no_perm.txt"

	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" -C "test.txt" "no_perm.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" "no_perm.txt" "test.txt" "error.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" -C "test.txt" "test.txt" "test.txt" "test.txt" "test.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" "test.txt" "test.txt" "test.txt" "test.txt" "test.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	"$executable" -C "test.txt" "test.txt" "test.txt" "test.txt" "test.txt" >> "user_stdin_output" 2>> "user_stderr_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
	echo "Exit status:" $? >> "user_output"

	echo >> "user_output"

	chmod 644 "no_perm.txt"

	diff -au --color=always "user_output" "expected_output"

	if [[ $? -ne 0 ]]; then

		echo
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
		echo -e "${RED}Diff KO :(${RESET}"
		grade=0

		valgrind "$executable" -c 42 "test.txt" 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" -c 42 "test.txt" 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts" && \
		valgrind --track-fds=yes "$executable" -c 42 "test.txt" 2>&1 | grep -q "FILE DESCRIPTORS: 3 open (3 std) at exit."

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			valgrind --track-fds=yes --trace-children=yes --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable"
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"
			grade=0

		fi

	else

		valgrind "$executable" -c 42 "test.txt" 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" -c 42 "test.txt" 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts" && \
		valgrind --track-fds=yes "$executable" -c 42 "test.txt" 2>&1 | grep -q "FILE DESCRIPTORS: 3 open (3 std) at exit."

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			valgrind --track-fds=yes --trace-children=yes --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable" -c 42 "test.txt"
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"
			grade=0

		else 

			norminette -R CheckForbiddenSourceHeader | grep "Error" > "user_output"

			if [[ $? -eq 0 ]]; then

				echo -e "$RED"
				norminette -R CheckForbiddenSourceHeader | grep "Error"
				echo -e "$RESET"
				echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
				echo -e "${RED}Norm check KO :(${RESET}"
				grade=0

			else

				echo
				echo -e "${GREEN}Diff OK :)${RESET}"
				echo -e "$GREEN>>>>>>>>>>>>>>>>>>>>>>>>>>>> SUCCESS <<<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
				grade=35

	fi fi fi

	rm -f "user_output" "user_stdin_output" "user_stderr_output"
	cd "$OLDPWD"
	make fclean
fi

exit $grade
