#!/bin/bash

src_dir="$(pwd)/$1"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
cd "$script_dir"

executable="./user_exe"
user_output="user_output"

src_file="ft_putnbr_base.c"
src_obj="ft_putnbr_base.o"

function exit_prog() {
	rm -f "$executable" "$user_output" "$src_obj"
	exit $1
}

function test() {
	echo "= Test $1 ================================================================"
	printf '$> %s' "$2"
	for arg in "${@:3}"; do
		printf ' "'
		printf '%s' "$arg" | LC_ALL=C perl -pe '
			s/([\x00-\x1F\x7F-\xFF])/
				$1 eq "\x07" ? "\\a" :
				$1 eq "\x08" ? "\\b" :
				$1 eq "\x09" ? "\\t" :
				$1 eq "\x0A" ? "\\n" :
				$1 eq "\x0B" ? "\\v" :
				$1 eq "\x0C" ? "\\f" :
				$1 eq "\x0D" ? "\\r" :
				sprintf("\\x%02x", ord($1))
			/gex;
		'
		printf '"'
	done
	printf '\n'
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

cc -Wall -Wextra -Werror -g3 -c "$src_dir/$src_file" -o "$src_obj"

if [[ $? -ne 0 ]]; then
		echo "Could not compile '$executable'"
		exit_prog 0
fi

if [[ "$(nm "$src_obj" | grep " U " | awk '{ print $2 }' | awk -F '@' '{ print $1 }' | grep -v -F -x -f allowed_functions.txt | wc -l)" -ne 0 ]]; then
	echo "CHEATING"
	exit_prog -42
fi

/usr/bin/norminette "$src_dir/$src_file" | grep -E "(Error|Warning)" > /dev/null

if [[ $? -eq 0 ]]; then
	echo "Norme check FAILED"
	exit_prog 0
fi

echo -e "cc -Wall -Wextra -Werror $src_file main.c -o $executable\n"
cc -Wall -Wextra -Werror -g3 "$src_dir/$src_file" main.c -o "$executable"

if [[ $? -ne 0 ]]; then
	echo "Could not compile '$executable'"
	exit_prog 0
else
	test 1  "$executable" 1 "0"
	test 2  "$executable" 1 "0123456781"
	test 3  "$executable" 1 ""
	test 4  "$executable" 1 "abcde+fgh"
	test 5  "$executable" 1 "abcde-fgh"
	test 6  "$executable" 1 "0123456789"
	test 7  "$executable" 42 "0123456789"
	test 8  "$executable" -42 "0123456789"
	test 9  "$executable" 2147483647 "0123456789"
	test 10 "$executable" -2147483648 "0123456789"
	test 11 "$executable" 42 "01"
	test 12 "$executable" 2147483647 "01"
	test 13 "$executable" -2147483648 "01"
	test 14 "$executable" 0 "01"
	test 15 "$executable" 0 "0123456789abcdef"
	test 16 "$executable" 255 "0123456789abcdef"
	test 17 "$executable" -1024 "0123456789abcdef"
	test 18 "$executable" 80 "pneyvif"
	test 19 "$executable" -342391 "poneyvif"

	exit_prog 15
fi
