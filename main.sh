#!/bin/bash

RED="\033[31;1m"
GREEN="\033[32;1m"
YELLOW="\033[33;1m"
RESET="\033[0m"

echo -e "$YELLOW====================== Moulinette Launcher ======================$RESET"
echo -e "$YELLOW========================== by rlebaill ==========================$RESET"


dir=$(basename $PWD)

if [[ "$dir" == "C00" ]]; then

	script_dir="$(dirname "${BASH_SOURCE[0]}")"
	bash "$script_dir/C00/C00.sh"

else

	echo
	echo -e "$RED================== Not in a project directory. ==================$RESET"

fi
