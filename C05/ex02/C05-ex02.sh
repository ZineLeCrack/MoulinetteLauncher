#!/bin/bash

src_dir="$(pwd)/$1"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
cd "$script_dir"

executable="./user_exe"
user_output="user_output"

src_file="ft_iterative_power.c"
src_obj="ft_iterative_power.o"

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

if [[ "$(objdump -dr "$src_obj" | grep -A1 "call" | grep "ft_iterative_power-" | wc -l)" -ne 0 ]]; then
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
	test 1   "$executable" -3 -3
	test 2   "$executable" -3 -2
	test 3   "$executable" -3 -1
	test 4   "$executable" -3 0
	test 5   "$executable" -3 1
	test 6   "$executable" -3 2
	test 7   "$executable" -3 3
	test 8   "$executable" -3 4
	test 9   "$executable" -3 5
	test 10  "$executable" -3 6
	test 11  "$executable" -2 -3
	test 12  "$executable" -2 -2
	test 13  "$executable" -2 -1
	test 14  "$executable" -2 0
	test 15  "$executable" -2 1
	test 16  "$executable" -2 2
	test 17  "$executable" -2 3
	test 18  "$executable" -2 4
	test 19  "$executable" -2 5
	test 20  "$executable" -2 6
	test 21  "$executable" -1 -3
	test 22  "$executable" -1 -2
	test 23  "$executable" -1 -1
	test 24  "$executable" -1 0
	test 25  "$executable" -1 1
	test 26  "$executable" -1 2
	test 27  "$executable" -1 3
	test 28  "$executable" -1 4
	test 29  "$executable" -1 5
	test 30  "$executable" -1 6
	test 31  "$executable" 0 -3
	test 32  "$executable" 0 -2
	test 33  "$executable" 0 -1
	test 34  "$executable" 0 0
	test 35  "$executable" 0 1
	test 36  "$executable" 0 2
	test 37  "$executable" 0 3
	test 38  "$executable" 0 4
	test 39  "$executable" 0 5
	test 40  "$executable" 0 6
	test 41  "$executable" 1 -3
	test 42  "$executable" 1 -2
	test 43  "$executable" 1 -1
	test 44  "$executable" 1 0
	test 45  "$executable" 1 1
	test 46  "$executable" 1 2
	test 47  "$executable" 1 3
	test 48  "$executable" 1 4
	test 49  "$executable" 1 5
	test 50  "$executable" 1 6
	test 51  "$executable" 2 -3
	test 52  "$executable" 2 -2
	test 53  "$executable" 2 -1
	test 54  "$executable" 2 0
	test 55  "$executable" 2 1
	test 56  "$executable" 2 2
	test 57  "$executable" 2 3
	test 58  "$executable" 2 4
	test 59  "$executable" 2 5
	test 60  "$executable" 2 6
	test 61  "$executable" 3 -3
	test 62  "$executable" 3 -2
	test 63  "$executable" 3 -1
	test 64  "$executable" 3 0
	test 65  "$executable" 3 1
	test 66  "$executable" 3 2
	test 67  "$executable" 3 3
	test 68  "$executable" 3 4
	test 69  "$executable" 3 5
	test 70  "$executable" 3 6
	test 71  "$executable" 4 -3
	test 72  "$executable" 4 -2
	test 73  "$executable" 4 -1
	test 74  "$executable" 4 0
	test 75  "$executable" 4 1
	test 76  "$executable" 4 2
	test 77  "$executable" 4 3
	test 78  "$executable" 4 4
	test 79  "$executable" 4 5
	test 80  "$executable" 4 6
	test 81  "$executable" 5 -3
	test 82  "$executable" 5 -2
	test 83  "$executable" 5 -1
	test 84  "$executable" 5 0
	test 85  "$executable" 5 1
	test 86  "$executable" 5 2
	test 87  "$executable" 5 3
	test 88  "$executable" 5 4
	test 89  "$executable" 5 5
	test 90  "$executable" 5 6
	test 91  "$executable" 6 -3
	test 92  "$executable" 6 -2
	test 93  "$executable" 6 -1
	test 94  "$executable" 6 0
	test 95  "$executable" 6 1
	test 96  "$executable" 6 2
	test 97  "$executable" 6 3
	test 98  "$executable" 6 4
	test 99  "$executable" 6 5
	test 100 "$executable" 6 6

	exit_prog 10
fi
