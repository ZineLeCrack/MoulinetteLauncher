#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE=========================     C01    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

echo

echo -e "$MAGENTA============================= ex00  =============================$RESET"
echo -e "$MAGENTA============================= ft_ft =============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C01-ex00.sh"
fi

src_dir="ex01"

echo

echo -e "$MAGENTA========================      ex01      =========================$RESET"
echo -e "$MAGENTA======================== ft_ultimate_ft =========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C01-ex01.sh"
fi

src_dir="ex02"

echo

echo -e "$MAGENTA============================  ex02   ============================$RESET"
echo -e "$MAGENTA============================ ft_swap ============================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C01-ex02.sh"
fi

src_dir="ex03"

echo

echo -e "$MAGENTA==========================    ex03    ===========================$RESET"
echo -e "$MAGENTA========================== ft_div_mod ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex03/C01-ex03.sh"
fi

src_dir="ex04"

echo

echo -e "$MAGENTA======================        ex04         ======================$RESET"
echo -e "$MAGENTA====================== ft_ultimate_div_mod ======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex04/C01-ex04.sh"
fi

src_dir="ex05"

echo
echo -e "$MAGENTA===========================   ex05    ===========================$RESET"
echo -e "$MAGENTA=========================== ft_putstr ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex05/C01-ex05.sh"
fi

src_dir="ex06"

echo
echo -e "$MAGENTA===========================   ex06    ===========================$RESET"
echo -e "$MAGENTA=========================== ft_strlen ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex06/C01-ex06.sh"
fi

src_dir="ex07"

echo
echo -e "$MAGENTA========================      ex07      =========================$RESET"
echo -e "$MAGENTA======================== ft_rev_int_tab =========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex07/C01-ex07.sh"
fi

src_dir="ex08"

echo
echo -e "$MAGENTA========================      ex08       ========================$RESET"
echo -e "$MAGENTA======================== ft_sort_int_tab ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex08/C01-ex08.sh"
fi
