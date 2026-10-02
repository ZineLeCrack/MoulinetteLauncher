#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo -e "\n$BLUE=========================     C00    ============================$RESET\n"

final_grade=0
end_grade=0

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

if [[ -n "$1" ]]; then
	cd "$1"
fi

function test_ex() {
	if [[ -d "$1" ]]; then
		echo "= $1 ========================================================================="

		bash "$script_dir/$1/C00-$1.sh" 

		grade=$?
		echo -e "Grade: $grade\n"

		if [[ $grade -eq 0 ]]; then
			end_grade=1
		fi
		if [[ $end_grade -ne 1 ]]; then
			final_grade=$((final_grade + grade))
		fi
	fi
}

test_ex "ex00"
test_ex "ex01"
test_ex "ex02"
test_ex "ex03"
test_ex "ex04"
test_ex "ex05"
test_ex "ex06"
test_ex "ex07"
test_ex "ex08"

echo -e "= Final grade: $final_grade =============================================================="
