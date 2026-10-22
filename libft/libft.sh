#!/bin/bash

final_grade=0
end_grade=0

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

if [[ -n "$1" ]]; then
	cd "$1"
fi

echo "= Host-specific information ===================================================="
echo "\$> hostname; uname -msr"
hostname
uname -msr
echo "\$> date"
date

echo -e "\n= Collected files =========================================="
echo "\$> ls -lAR $PWD"
ls -lAR $PWD

echo -e "\n= Compiling =========================================="
echo "\$> make"
make -j

if [[ $? -ne 0 ]]; then
	echo "Does not compile"
	echo -e "= Final grade: $final_grade =============================================================="
	exit
fi

echo

function test_ex() {
	echo "= $1 ========================================================================="

	bash "$script_dir/$1/libft-$1.sh" "$1"

	grade=$?

	if [[ $grade -eq 214 ]]; then 
		echo -e "Grade: -42\n"
	else
		echo -e "Grade: $grade\n"
	fi

	if [[ $grade -eq 0 ]]; then
		end_grade=1
	else if [[ $grade -eq 214 ]]; then
		end_grade=1
		final_grade=-42
	fi fi

	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
}

if [[ -n "$1" ]]; then
	for i in "$@"; do
		if [[ -f "$1" ]]; then
			test_ex "${1%.c}"
		fi
	done
else
	while IFS= read -r line; do
		if [[ -f "$line.c" ]]; then
			test_ex "$line"
		fi
	done < "$script_dir/functions.txt"
fi

make fclean &> /dev/null

echo -e "= Final grade: $final_grade =============================================================="
