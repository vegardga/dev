#!/usr/bin/env bash

script_dir=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)
filter="$1"

echo "$script_dir -- $filter"

cd $script_dir
scripts=$(find ./runs -maxdepth 1 -mindepth 1 -type f)

for script in $scripts; do
	if echo "$script" | grep -qv "$filter"; then
		echo "filtering $script"
		continue
	fi

	./$script
done
