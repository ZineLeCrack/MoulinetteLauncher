#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
BLUE="\033[34;1m"
MAGENTA="\033[35;1m"
RESET="\033[0m"

echo
echo -e "$BLUE=========================     C13    ============================$RESET"

script_dir="$(dirname "${BASH_SOURCE[0]}")"

src_dir="ex00"

echo

echo -e "$MAGENTA======================       ex00        ========================$RESET"
echo -e "$MAGENTA====================== btree_create_node ========================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex00/C13-ex00.sh"
fi

src_dir="ex01"

echo

echo -e "$MAGENTA======================        ex01        =======================$RESET"
echo -e "$MAGENTA====================== btree_apply_prefix =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex01/C13-ex01.sh"
fi

src_dir="ex02"

echo

echo -e "$MAGENTA=======================       ex02        =======================$RESET"
echo -e "$MAGENTA======================= btree_apply_infix =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex02/C13-ex02.sh"
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
	bash "$script_dir/ex03/C13-ex03.sh"
fi

src_dir="ex04"

echo

echo -e "$MAGENTA=======================       ex04        =======================$RESET"
echo -e "$MAGENTA======================= btree_insert_data =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex04/C13-ex04.sh"
fi

src_dir="ex05"

echo

echo -e "$MAGENTA=======================       ex05        =======================$RESET"
echo -e "$MAGENTA======================= btree_search_item =======================$RESET"

if [[ ! -d "$src_dir" ]]; then
	echo
	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
	echo -e "${RED}KO :(${RESET}"
else
	bash "$script_dir/ex05/C13-ex05.sh"
fi

# src_dir="ex06"

# echo

# echo -e "$MAGENTA========================      ex06     ==========================$RESET"
# echo -e "$MAGENTA======================== ft_list_clear ==========================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo
# 	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex06/C12-ex06.sh"
# fi

# src_dir="ex07"

# echo

# echo -e "$MAGENTA==========================    ex07    ===========================$RESET"
# echo -e "$MAGENTA========================== ft_list_at ===========================$RESET"

# if [[ ! -d "$src_dir" ]]; then
# 	echo
# 	echo -e "$RED>>>>>>>>>>>>>>>>>>>>>>>> Nothing turned in <<<<<<<<<<<<<<<<<<<<<<$RESET"
# 	echo -e "${RED}KO :(${RESET}"
# else
# 	bash "$script_dir/ex07/C12-ex07.sh"
# fi
