#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE=========================     C02    ============================$RESET"

final_grade=0
end_grade=0

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA===========================   ex00    ===========================$RESET"
	echo -e "$MAGENTA=========================== ft_strcpy ===========================$RESET"

	bash "$script_dir/ex00/C02-ex00.sh"

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
	echo -e "$MAGENTA========================== ft_strncpy ===========================$RESET"

	bash "$script_dir/ex01/C02-ex01.sh"

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

	echo -e "$MAGENTA========================      ex02       ========================$RESET"
	echo -e "$MAGENTA======================== ft_str_is_alpha ========================$RESET"

	bash "$script_dir/ex02/C02-ex02.sh"

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

	echo -e "$MAGENTA=======================       ex03        =======================$RESET"
	echo -e "$MAGENTA======================= ft_str_is_numeric =======================$RESET"

	bash "$script_dir/ex03/C02-ex03.sh"

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

	echo -e "$MAGENTA======================        ex04         ======================$RESET"
	echo -e "$MAGENTA====================== ft_str_is_lowercase ======================$RESET"

	bash "$script_dir/ex04/C02-ex04.sh"

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

	echo -e "$MAGENTA======================        ex05         ======================$RESET"
	echo -e "$MAGENTA====================== ft_str_is_uppercase ======================$RESET"

	bash "$script_dir/ex05/C02-ex05.sh"

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

	echo -e "$MAGENTA======================        ex06         ======================$RESET"
	echo -e "$MAGENTA====================== ft_str_is_printable ======================$RESET"

	bash "$script_dir/ex06/C02-ex06.sh"

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
	echo -e "$MAGENTA=========================     ex07     ==========================$RESET"
	echo -e "$MAGENTA========================= ft_strupcase ==========================$RESET"

	bash "$script_dir/ex07/C02-ex07.sh"

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
	echo -e "$MAGENTA=========================     ex08      =========================$RESET"
	echo -e "$MAGENTA========================= ft_strlowcase =========================$RESET"

	bash "$script_dir/ex08/C02-ex08.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex09"

if [[ -d "$src_dir" ]]; then
	echo
	echo -e "$MAGENTA=======================       ex09       ========================$RESET"
	echo -e "$MAGENTA======================= ft_strcapitalize ========================$RESET"

	bash "$script_dir/ex09/C02-ex09.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex10"


if [[ -d "$src_dir" ]]; then
	echo
	echo -e "$MAGENTA==========================    ex10    ===========================$RESET"
	echo -e "$MAGENTA========================== ft_strlcpy ===========================$RESET"

	bash "$script_dir/ex10/C02-ex10.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex11"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA====================          ex11           ====================$RESET"
	echo -e "$MAGENTA==================== ft_putstr_non_printable ====================$RESET"

	bash "$script_dir/ex11/C02-ex11.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex12"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA========================      ex12       ========================$RESET"
	echo -e "$MAGENTA======================== ft_print_memory ========================$RESET"

	bash "$script_dir/ex12/C02-ex12.sh"

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
