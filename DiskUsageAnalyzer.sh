#!/bin/bash
echo "Enter the directory:"
read dir
if [ ! -d "$dir" ]
then
    echo "Directory not found."
    exit 1
fi
echo "Disk usage inside: $dir"
echo "----------------------------------"
du -h --max-depth=1 "$dir" | sort -hr
