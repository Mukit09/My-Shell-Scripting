#!/bin/bash

fileFormat="$1"

#size=${#fileFormat}

for file in *\ *."$fileFormat"
do
	tmpFileName="${file// /_}";
	mv "$file" "$tmpFileName";
	
	if [ "$fileFormat" == "vtt" ]; then

		sed -i '1d' "$tmpFileName";
		mv "$tmpFileName" ${tmpFileName//.vtt/.srt} ; 
	fi
done



