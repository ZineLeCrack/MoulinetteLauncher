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
echo -e "$BLUE=========================     C12    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA=======================      ex00      ==========================$RESET"
	echo -e "$MAGENTA======================= ft_create_elem ==========================$RESET"

	bash "$script_dir/ex00/C12-ex00.sh"

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

	echo -e "$MAGENTA======================        ex01        =======================$RESET"
	echo -e "$MAGENTA====================== ft_list_push_front =======================$RESET"

	bash "$script_dir/ex01/C12-ex01.sh"

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

	echo -e "$MAGENTA=========================     ex02     ==========================$RESET"
	echo -e "$MAGENTA========================= ft_list_size ==========================$RESET"

	bash "$script_dir/ex02/C12-ex02.sh"

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

	echo -e "$MAGENTA=========================     ex03     ==========================$RESET"
	echo -e "$MAGENTA========================= ft_list_last ==========================$RESET"

	bash "$script_dir/ex03/C12-ex03.sh"

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

	echo -e "$MAGENTA=======================       ex04        =======================$RESET"
	echo -e "$MAGENTA======================= ft_list_push_back =======================$RESET"

	bash "$script_dir/ex04/C12-ex04.sh"

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

	echo -e "$MAGENTA=======================       ex05        =======================$RESET"
	echo -e "$MAGENTA======================= ft_list_push_strs =======================$RESET"

	bash "$script_dir/ex05/C12-ex05.sh"

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

	echo -e "$MAGENTA========================      ex06     ==========================$RESET"
	echo -e "$MAGENTA======================== ft_list_clear ==========================$RESET"

	bash "$script_dir/ex06/C12-ex06.sh"

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

	echo -e "$MAGENTA==========================    ex07    ===========================$RESET"
	echo -e "$MAGENTA========================== ft_list_at ===========================$RESET"

	bash "$script_dir/ex07/C12-ex07.sh"

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

	echo -e "$MAGENTA=======================       ex08      =========================$RESET"
	echo -e "$MAGENTA======================= ft_list_reverse =========================$RESET"

	bash "$script_dir/ex08/C12-ex08.sh"

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

	echo -e "$MAGENTA=======================       ex09      =========================$RESET"
	echo -e "$MAGENTA======================= ft_list_foreach =========================$RESET"

	bash "$script_dir/ex09/C12-ex09.sh"

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

	echo -e "$MAGENTA======================        ex10        =======================$RESET"
	echo -e "$MAGENTA====================== ft_list_foreach_if =======================$RESET"

	bash "$script_dir/ex10/C12-ex10.sh"

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

	echo -e "$MAGENTA=========================     ex11     ==========================$RESET"
	echo -e "$MAGENTA========================= ft_list_find ==========================$RESET"

	bash "$script_dir/ex11/C12-ex11.sh"

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

	echo -e "$MAGENTA=======================       ex12        =======================$RESET"
	echo -e "$MAGENTA======================= ft_list_remove_if =======================$RESET"

	bash "$script_dir/ex12/C12-ex12.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex13"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA========================      ex13     ==========================$RESET"
	echo -e "$MAGENTA======================== ft_list_merge ==========================$RESET"

	bash "$script_dir/ex13/C12-ex13.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex14"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA=========================     ex14     ==========================$RESET"
	echo -e "$MAGENTA========================= ft_list_sort ==========================$RESET"

	bash "$script_dir/ex14/C12-ex14.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex15"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA======================        ex15         ======================$RESET"
	echo -e "$MAGENTA====================== ft_list_reverse_fun ======================$RESET"

	bash "$script_dir/ex15/C12-ex15.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex16"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA=====================         ex16          =====================$RESET"
	echo -e "$MAGENTA===================== ft_sorted_list_insert =====================$RESET"

	bash "$script_dir/ex16/C12-ex16.sh"

	grade=$?
	echo -e $YELLOW"\nGrade = $grade"$RESET
	if [[ $grade -eq 0 ]]; then
		end_grade=1
	fi
	if [[ $end_grade -ne 1 ]]; then
		final_grade=$((final_grade + grade))
	fi
fi

src_dir="ex17"

if [[ -d "$src_dir" ]]; then
	echo

	echo -e "$MAGENTA=====================         ex17         ======================$RESET"
	echo -e "$MAGENTA===================== ft_sorted_list_merge ======================$RESET"

	bash "$script_dir/ex17/C12-ex17.sh"

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
