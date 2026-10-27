#!/bin/bash

src_dir="$(pwd)"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
cd "$script_dir"

executable="./user_exe"
user_output="user_output"

src_file="ft_memset.c"
src_obj="${src_file%.c}.o"

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

if [[ "$(nm "$src_obj" | grep " U " | awk '{ print $2 }' | awk -F '@' '{ print $1 }' | grep -v -F -x -f <(cat allowed_functions.txt ../functions.txt) | wc -l)" -ne 0 ]]; then
	echo "CHEATING"
	exit_prog -42
fi

/usr/bin/norminette "$src_dir/$src_file" | grep -E "(Error|Warning)" > /dev/null

if [[ $? -eq 0 ]]; then
	echo "Norme check FAILED"
	exit_prog 0
fi

echo -e "cc -Wall -Wextra -Werror main.c libft.a -I$src_dir -o $executable\n"
cc -Wall -Wextra -Werror -g3 main.c "$src_dir/libft.a" -I$src_dir -o "$executable"

if [[ $? -ne 0 ]]; then
	echo "Could not compile '$executable'"
	exit_prog 0
else
	test 1  "$executable" 1 0
	test 2  "$executable" 5 32
	test 3  "$executable" 50 64
	test 4  "$executable" 1000 128
	test 5  "$executable" 256 256
	test 6  "$executable" 0 1024
	test 7  "$executable" 64 65536
	test 8  "$executable" 2 16777216
	test 9  "$executable" 42 4294967296
	test 10 "$executable" 100 -1

	exit_prog 2
fi
