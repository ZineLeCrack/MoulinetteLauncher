#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex02"
expected_executable="$script_dir/expected_ft_tail"
user_executable="$script_dir/user_ft_tail"
executable="$script_dir/ft_tail"

cd "$src_dir"
make > "$script_dir/user_output"

function test() {
	echo -n "stdin  : " > "expected_stdin_output"
	echo -n "stderr : " > "expected_stderr_output"
	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	ln -s "$expected_executable" "$executable"
	"$executable" $@ >> "expected_stdin_output" 2>> "expected_stderr_output"
	echo "Exit status:" $? >> "expected_output"
	rm -f "$executable"
	ln -s "$user_executable" "$executable"
	"$executable" $@ >> "user_stdin_output" 2>> "user_stderr_output"
	echo "Exit status:" $? >> "user_output"
	rm -f "$executable"
	cat "expected_stdin_output" "expected_stderr_output" >> "expected_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
}

function test_stdin() {
	echo -n "stdin  : " > "expected_stdin_output"
	echo -n "stderr : " > "expected_stderr_output"
	echo -n "stdin  : " > "user_stdin_output"
	echo -n "stderr : " > "user_stderr_output"
	ln -s "$expected_executable" "$executable"
	cat "$1" | "$executable" "${@:2}" >> "expected_stdin_output" 2>> "expected_stderr_output"
	echo "Exit status:" $? >> "expected_output"
	rm -f "$executable"
	ln -s "$user_executable" "$executable"
	cat "$1" | "$executable" "${@:2}" >> "user_stdin_output" 2>> "user_stderr_output"
	echo "Exit status:" $? >> "user_output"
	rm -f "$executable"
	cat "expected_stdin_output" "expected_stderr_output" >> "expected_output"
	cat "user_stdin_output" "user_stderr_output" >> "user_output"
}

if [[ $? -ne 0 ]]; then

	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> DOES NOT COMPILE <<<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
	rm -f "$script_dir/user_output"
	grade=0

else

	mv "ft_tail" "$script_dir/user_ft_tail"
	rm -f "$executable"

	cd "$script_dir"

	echo -n > "expected_output"
	echo -n > "user_output"

	test -c 40 "test.txt"

	echo >> "expected_output"
	echo >> "user_output"

	test -c 1 "no_perm.txt" "test.txt"

	echo >> "expected_output"
	echo >> "user_output"

	test_stdin "test.txt" -c 60

	echo >> "expected_output"
	echo >> "user_output"

	test -c 5 "error.txt" "test.txt" "test.txt"

	echo >> "expected_output"
	echo >> "user_output"

	chmod 000 "no_perm.txt"

	test -c 42 "test.txt" "no_perm.txt"

	echo >> "expected_output"
	echo >> "user_output"

	test -c 0 "no_perm.txt" "test.txt" "error.txt"

	echo >> "expected_output"
	echo >> "user_output"

	test "$executable" -c 4654374834737843454347373 "test.txt" "test.txt" "test.txt" "test.txt" "test.txt"

	echo >> "expected_output"
	echo >> "user_output"

	test -c 34272d34234324 "test.txt" "test.txt" "test.txt" "test.txt" "test.txt"

	echo >> "expected_output"
	echo >> "user_output"

	test -c 744787447878 "test.txt" "test.txt" "test.txt" "test.txt" "test.txt"

	echo >> "expected_output"
	echo >> "user_output"

	chmod 644 "no_perm.txt"

	diff -au --color=always "user_output" "expected_output"

	if [[ $? -ne 0 ]]; then

		echo
		echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
		echo -e "${RED}Diff KO :(${RESET}"

		ln -s "$user_executable" "$executable"
		valgrind "$executable" -c 42 "test.txt" 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" -c 42 "test.txt" 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts" && \
		valgrind --track-fds=yes "$executable" -c 42 "test.txt" 2>&1 | grep -q "FILE DESCRIPTORS: 3 open (3 std) at exit."
		rm -f "$executable"
		grade=0

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			ln -s "$user_executable" "$executable"
			valgrind --track-fds=yes --trace-children=yes --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable"
			rm -f "$executable"
			echo -e "$RESET"
			echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>>>>>>> FAILURE <<<<<<<<<<<<<<<<<<<<<<<<<<<$RESET"
			echo -e "${RED}Memory check KO :(${RESET}"
			grade=0

		fi

	else

		ln -s "$user_executable" "$executable"
		valgrind "$executable" -c 42 "test.txt" 2>&1 | grep -q "All heap blocks were freed -- no leaks are possible" && \
		valgrind "$executable" -c 42 "test.txt" 2>&1 | grep -q "ERROR SUMMARY: 0 errors from 0 contexts" && \
		valgrind --track-fds=yes "$executable" -c 42 "test.txt" 2>&1 | grep -q "FILE DESCRIPTORS: 3 open (3 std) at exit."
		rm -f "$executable"

		if [[ $? -ne 0 ]]; then

			echo -e "$RED"
			ln -s "$user_executable" "$executable"
			valgrind --track-fds=yes --trace-children=yes --leak-check=full --show-leak-kinds=all --track-origins=yes "$executable" -c 42 "test.txt"
			rm -f "$executable"
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
				grade=30

	fi fi fi

	rm -f "expected_output" "expected_stderr_output" "expected_stdin_output" "user_output" "user_stdin_output" "user_stderr_output" "$script_dir/user_ft_tail"
	cd "$OLDPWD"
	make fclean > /dev/null 2> /dev/null
fi

exit $grade
