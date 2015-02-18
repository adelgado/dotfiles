#!/usr/bin/env sh

files=$(find ./files -type f)

for file in $(echo "$files")
do
	future_file=~/$(basename "$file")
	if [ -e $future_file ]
	then
		echo "Cowardly refusing to overwrite existing file $future_file"
		continue
	else
		cp -v $file $future_file
	fi
done
