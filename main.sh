#!/bin/bash

dir=$(basename $PWD)

if [[ "$dir" == "C00" ]]; then

	script_dir="$(dirname "${BASH_SOURCE[0]}")"
	bash "$script_dir/C00/C00.sh"

fi
