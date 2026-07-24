#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

final_grade=0
end_grade=0

echo
echo -e "$BLUE=========================     C11    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA=========================    ex00    ============================$RESET"
	echo -e "$MAGENTA========================= ft_foreach ============================$RESET"

	bash "$script_dir/ex00/C11-ex00.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex01"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA============================  ex01  =============================$RESET"
	echo -e "$MAGENTA============================ ft_map =============================$RESET"

	bash "$script_dir/ex01/C11-ex01.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex02"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA============================  ex02  =============================$RESET"
	echo -e "$MAGENTA============================ ft_any =============================$RESET"

	bash "$script_dir/ex02/C11-ex02.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex03"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA==========================    ex03     ==========================$RESET"
	echo -e "$MAGENTA========================== ft_count_if ==========================$RESET"

	bash "$script_dir/ex03/C11-ex03.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex04"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA==========================    ex04    ===========================$RESET"
	echo -e "$MAGENTA========================== ft_is_sort ===========================$RESET"

	bash "$script_dir/ex04/C11-ex04.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex05"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA============================= ex05  =============================$RESET"
	echo -e "$MAGENTA============================= do-op =============================$RESET"

	bash "$script_dir/ex05/C11-ex05.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex06"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA======================        ex06        =======================$RESET"
	echo -e "$MAGENTA====================== ft_sort_string_tab =======================$RESET"

	bash "$script_dir/ex06/C11-ex06.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex07"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA=================             ex07            ===================$RESET"
	echo -e "$MAGENTA================= ft_advanced_sort_string_tab ===================$RESET"

	bash "$script_dir/ex07/C11-ex07.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

echo -e $YELLOW"\n\nFinal grade: $final_grade"$RESET
