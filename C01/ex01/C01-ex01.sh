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
	"$2" "${@:3}" > "$user_output"
	echo "\$> diff -U 3 $user_output test$1.output | cat -e"
	diff -U 3 "$user_output" "test$1.output" | cat -e

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		echo -e "\nDiff KO :("
		exit_prog 0
	else
		echo -e "\nDiff OK :D\n"
	fi
}

/usr/bin/norminette "$src_dir/ft_ultimate_ft.c" | grep -E "(Error|Warning)" > /dev/null

if [[ $? -eq 0 ]]; then
	echo "Norme check FAILED"
	exit_prog 0
fi

echo -e "cc -Wall -Wextra -Werror ft_ultimate_ft.c main.c -o $executable\n"
cc -Wall -Wextra -Werror -g3 "$src_dir/ft_ultimate_ft.c" main.c -o "$executable"

if [[ $? -ne 0 ]]; then
	echo "Could not compile '$executable'"
	exit_prog 0
else
	test 1 "$executable"
	exit_prog 10
fi
