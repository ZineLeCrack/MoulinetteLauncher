#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE=========================     C12    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

echo

echo -e "$MAGENTA=======================      ex00      ==========================$RESET"
echo -e "$MAGENTA======================= ft_create_elem ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C12-ex00.sh"
fi

src_dir="ex01"

echo

echo -e "$MAGENTA======================        ex01        =======================$RESET"
echo -e "$MAGENTA====================== ft_list_push_front =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C12-ex01.sh"
fi

src_dir="ex02"

echo

echo -e "$MAGENTA=========================     ex02     ==========================$RESET"
echo -e "$MAGENTA========================= ft_list_size ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C12-ex02.sh"
fi

src_dir="ex03"

echo

echo -e "$MAGENTA=========================     ex03     ==========================$RESET"
echo -e "$MAGENTA========================= ft_list_last ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex03/C12-ex03.sh"
fi

src_dir="ex04"

echo

echo -e "$MAGENTA=======================       ex04        =======================$RESET"
echo -e "$MAGENTA======================= ft_list_push_back =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex04/C12-ex04.sh"
fi

src_dir="ex05"

echo

echo -e "$MAGENTA=======================       ex05        =======================$RESET"
echo -e "$MAGENTA======================= ft_list_push_strs =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex05/C12-ex05.sh"
fi

src_dir="ex06"

echo

echo -e "$MAGENTA========================      ex06     ==========================$RESET"
echo -e "$MAGENTA======================== ft_list_clear ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex06/C12-ex06.sh"
fi

src_dir="ex07"

echo

echo -e "$MAGENTA==========================    ex07    ===========================$RESET"
echo -e "$MAGENTA========================== ft_list_at ===========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex07/C12-ex07.sh"
fi

src_dir="ex08"

echo

echo -e "$MAGENTA=======================       ex08      =========================$RESET"
echo -e "$MAGENTA======================= ft_list_reverse =========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex08/C12-ex08.sh"
fi

src_dir="ex09"

echo

echo -e "$MAGENTA=======================       ex09      =========================$RESET"
echo -e "$MAGENTA======================= ft_list_foreach =========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex09/C12-ex09.sh"
fi

src_dir="ex10"

echo

echo -e "$MAGENTA======================        ex10        =======================$RESET"
echo -e "$MAGENTA====================== ft_list_foreach_if =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex10/C12-ex10.sh"
fi

src_dir="ex11"

echo

echo -e "$MAGENTA=========================     ex11     ==========================$RESET"
echo -e "$MAGENTA========================= ft_list_find ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex11/C12-ex11.sh"
fi

src_dir="ex12"

echo

echo -e "$MAGENTA=======================       ex12        =======================$RESET"
echo -e "$MAGENTA======================= ft_list_remove_if =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex12/C12-ex12.sh"
fi

src_dir="ex13"

echo

echo -e "$MAGENTA========================      ex13     ==========================$RESET"
echo -e "$MAGENTA======================== ft_list_merge ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex13/C12-ex13.sh"
fi

src_dir="ex14"

echo

echo -e "$MAGENTA=========================     ex14     ==========================$RESET"
echo -e "$MAGENTA========================= ft_list_sort ==========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex14/C12-ex14.sh"
fi

src_dir="ex15"

echo

echo -e "$MAGENTA======================        ex15         ======================$RESET"
echo -e "$MAGENTA====================== ft_list_reverse_fun ======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex15/C12-ex15.sh"
fi

src_dir="ex16"

echo

echo -e "$MAGENTA=====================         ex16          =====================$RESET"
echo -e "$MAGENTA===================== ft_sorted_list_insert =====================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex16/C12-ex16.sh"
fi

src_dir="ex17"

echo

echo -e "$MAGENTA=====================         ex17         ======================$RESET"
echo -e "$MAGENTA===================== ft_sorted_list_merge =====================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex17/C12-ex17.sh"
fi
