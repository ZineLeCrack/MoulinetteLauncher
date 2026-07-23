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
echo -e "$BLUE=========================     C03    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA===========================   ex00    ===========================$RESET"
	echo -e "$MAGENTA=========================== ft_strcmp ===========================$RESET"

	bash "$script_dir/ex00/C03-ex00.sh"

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

	echo -e "$MAGENTA==========================    ex01    ===========================$RESET"
	echo -e "$MAGENTA========================== ft_strncmp ===========================$RESET"

	bash "$script_dir/ex01/C03-ex01.sh"

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

	echo -e "$MAGENTA===========================   ex02    ===========================$RESET"
	echo -e "$MAGENTA=========================== ft_strcat ===========================$RESET"

	bash "$script_dir/ex02/C03-ex02.sh"

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

	echo -e "$MAGENTA==========================    ex03    ===========================$RESET"
	echo -e "$MAGENTA========================== ft_strncat ===========================$RESET"

	bash "$script_dir/ex03/C03-ex03.sh"

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

	echo -e "$MAGENTA===========================   ex04    ===========================$RESET"
	echo -e "$MAGENTA=========================== ft_strstr ===========================$RESET"

	bash "$script_dir/ex04/C03-ex04.sh"

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

	echo -e "$MAGENTA==========================    ex05    ===========================$RESET"
	echo -e "$MAGENTA========================== ft_strlcat ===========================$RESET"

	bash "$script_dir/ex05/C03-ex05.sh"

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
