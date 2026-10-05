#!/bin/bash

src_dir="$(pwd)/$1"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
cd "$script_dir"

executable="./user_exe"
user_output="user_output"

function exit_prog() {
	rm -f "$executable" "$user_output"
	exit $1
}

function test() {
	echo "= Test $1 ================================================================"
	echo "\$> $2 ${@:3}"
	{ "$2" "${@:3}"; } &> "$user_output"
	echo "\$> diff -U 3 $user_output test$1.output | cat -e"
	diff -U 3 "$user_output" "test$1.output" | cat -e

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		echo -e "\nDiff KO :("
		exit_prog 0
	else
		echo -e "\nDiff OK :D\n"
	fi
}

/usr/bin/norminette "$src_dir/ft_print_combn.c" | grep -E "(Error|Warning)" > /dev/null

if [[ $? -eq 0 ]]; then
	echo "Norme check FAILED"
	exit_prog 0
fi

echo -e "cc -Wall -Wextra -Werror ft_print_combn.c main.c -o $executable\n"
cc -Wall -Wextra -Werror -g3 "$src_dir/ft_print_combn.c" main.c -o "$executable"

if [[ $? -ne 0 ]]; then
	echo "Could not compile '$executable'"
	exit_prog 0
else
	test 1  "$executable" "0"
	test 2  "$executable" "1"
	test 3  "$executable" "2"
	test 4  "$executable" "3"
	test 5  "$executable" "4"
	test 6  "$executable" "5"
	test 7  "$executable" "6"
	test 8  "$executable" "7"
	test 9  "$executable" "8"
	test 10 "$executable" "9"

	exit_prog 15
fi
