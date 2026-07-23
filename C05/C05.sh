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
echo -e "$BLUE=========================     C05    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA====================         ex00           =====================$RESET"
	echo -e "$MAGENTA==================== ft_iterative_factorial =====================$RESET"

	bash "$script_dir/ex00/C05-ex00.sh"

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

	echo -e "$MAGENTA=====================         ex01           ====================$RESET"
	echo -e "$MAGENTA===================== ft_recursive_factorial ====================$RESET"

	bash "$script_dir/ex01/C05-ex01.sh"

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

	echo -e "$MAGENTA=======================       ex02         ======================$RESET"
	echo -e "$MAGENTA======================= ft_iterative_power ======================$RESET"

	bash "$script_dir/ex02/C05-ex02.sh"

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

	echo -e "$MAGENTA======================        ex03        =======================$RESET"
	echo -e "$MAGENTA====================== ft_recursive_power =======================$RESET"

	bash "$script_dir/ex03/C05-ex03.sh"

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

	echo -e "$MAGENTA=========================     ex04     ==========================$RESET"
	echo -e "$MAGENTA========================= ft_fibonacci ==========================$RESET"

	bash "$script_dir/ex04/C05-ex04.sh"

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

	echo -e "$MAGENTA============================  ex05   ============================$RESET"
	echo -e "$MAGENTA============================ ft_sqrt ============================$RESET"

	bash "$script_dir/ex05/C05-ex05.sh"

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

	echo -e "$MAGENTA==========================    ex06     ==========================$RESET"
	echo -e "$MAGENTA========================== ft_is_prime ==========================$RESET"

	bash "$script_dir/ex06/C05-ex06.sh"

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

	echo -e "$MAGENTA======================        ex07        =======================$RESET"
	echo -e "$MAGENTA====================== ft_find_next_prime =======================$RESET"

	bash "$script_dir/ex07/C05-ex07.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex08"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA========================      ex08      =========================$RESET"
	echo -e "$MAGENTA======================== The Ten Queens =========================$RESET"

	bash "$script_dir/ex08/C05-ex08.sh"

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
