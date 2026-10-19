#!/bin/bash

src_dir="$(pwd)/$1"

script_dir="$(dirname "${BASH_SOURCE[0]}")"
cd "$script_dir"

executable="./user_exe"
user_output="user_output"

src_files=("ft_convert_base.c" "ft_convert_base2.c")
src_objs=("ft_convert_base.o" "ft_convert_base2.o")
src_cbn="ft_convert_base_combined.o"

function exit_prog() {
	rm -f "$executable" "$user_output" "${src_objs[@]}" "$src_cbn"
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
	{ valgrind "$2" "${@:3}" 2> >(grep -iqE "leaked memory|Invalid write|Invalid read|Conditional jump or move" && echo "Memory error detected"); } &> "$user_output"
	echo "\$> diff -U 3 $user_output test$1.output | cat -e"
	diff -U 3 "$user_output" "test$1.output" | cat -e

	if [[ ${PIPESTATUS[0]} -ne 0 ]]; then
		echo -e "\nDiff KO :("
		exit_prog 0
	else
		echo -e "\nDiff OK :D\n"
	fi
}

for i in "${!src_files[@]}"; do
	cc -Wall -Wextra -Werror -g3 -c "$src_dir/${src_files[$i]}" -o "${src_objs[$i]}"

	if [[ $? -ne 0 ]]; then
		echo "Could not compile '$executable'"
		exit_prog 0
	fi
done

ld -r "${src_objs[@]}" -o "$src_cbn"

if [[ "$(nm "$src_cbn" | grep " U " | awk '{ print $2 }' | awk -F '@' '{ print $1 }' | grep -v -F -x -f allowed_functions.txt | wc -l)" -ne 0 ]]; then
		echo "CHEATING"
		exit_prog -42
fi

/usr/bin/norminette "${src_files[@]/#/"$src_dir"/}" | grep -E "(Error|Warning)" > /dev/null

if [[ $? -eq 0 ]]; then
	echo "Norme check FAILED"
	exit_prog 0
fi

echo -e "cc -Wall -Wextra -Werror ${src_files[*]} main.c -o $executable\n"
cc -Wall -Wextra -Werror -g3 "${src_files[@]/#/"$src_dir"/}" main.c -o "$executable"

if [[ $? -ne 0 ]]; then
	echo "Could not compile '$executable'"
	exit_prog 0
else
	test 1 "$executable" 42 "0123456789" "01"
	test 2 "$executable" 2147483647 "0123456789" "0123456789ABCDEF"
	test 3 "$executable" -2147483648 "0123456789" "poneyvif"
	test 4 "$executable" "	   ---vn" "poneyvif" "0123456789"
	test 5 "$executable" "			 +-+--yppfre" "poneyvif" "01"
	test 6 "$executable" 42 "12 3456789" "01"
	test 7 "$executable" 42 "1223456789" "01"

	exit_prog 20
fi
