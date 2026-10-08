#!/bin/bash

echo -e "\n=========================     C04    ============================\n"

final_grade=0
end_grade=0

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

if [[ -n "$1" ]]; then
	cd "$1"
fi

function test_ex() {
	if [[ -d "$1" ]]; then
		echo "= $1 ========================================================================="

		bash "$script_dir/$1/C04-$1.sh" "$1"

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
	fi
}

for i in {00..05}; do
	test_ex "ex$i"
done

echo -e "= Final grade: $final_grade =============================================================="
