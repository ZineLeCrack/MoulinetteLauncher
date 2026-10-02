#!/bin/bash

echo -e "\n=========================     C01    ============================\n"

final_grade=0
end_grade=0

script_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

if [[ -n "$1" ]]; then
	cd "$1"
fi

function test_ex() {
	if [[ -d "$1" ]]; then
		echo "= $1 ========================================================================="

		bash "$script_dir/$1/C01-$1.sh" "$1"

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

for i in {00..08}; do
	test_ex "ex$i"
done

echo -e "= Final grade: $final_grade =============================================================="
