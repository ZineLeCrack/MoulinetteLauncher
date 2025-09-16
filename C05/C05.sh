#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE=========================     C05    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

echo

echo -e "$MAGENTA====================         ex00           =====================$RESET"
echo -e "$MAGENTA==================== ft_iterative_factorial =====================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C05-ex00.sh"
fi

src_dir="ex01"

echo

echo -e "$MAGENTA=====================         ex01           ====================$RESET"
echo -e "$MAGENTA===================== ft_recursive_factorial ====================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C05-ex01.sh"
fi

src_dir="ex02"

echo

echo -e "$MAGENTA=======================       ex02         ======================$RESET"
echo -e "$MAGENTA======================= ft_iterative_power ======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C05-ex02.sh"
fi

src_dir="ex03"

echo

echo -e "$MAGENTA======================        ex03        =======================$RESET"
echo -e "$MAGENTA====================== ft_recursive_power =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex03/C05-ex03.sh"
fi

src_dir="ex04"

echo

echo -e "$MAGENTA=========================     ex04     ==========================$RESET"
echo -e "$MAGENTA========================= ft_fibonacci ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex04/C05-ex04.sh"
fi

src_dir="ex05"

echo
echo -e "$MAGENTA============================  ex05   ============================$RESET"
echo -e "$MAGENTA============================ ft_sqrt ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex05/C05-ex05.sh"
fi

src_dir="ex06"

echo
echo -e "$MAGENTA==========================    ex06     ==========================$RESET"
echo -e "$MAGENTA========================== ft_is_prime ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex06/C05-ex06.sh"
fi

src_dir="ex07"

echo
echo -e "$MAGENTA======================        ex07        =======================$RESET"
echo -e "$MAGENTA====================== ft_find_next_prime =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex07/C05-ex07.sh"
fi

src_dir="ex08"

echo
echo -e "$MAGENTA========================      ex08      =========================$RESET"
echo -e "$MAGENTA======================== The Ten Queens =========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex08/C05-ex08.sh"
fi
