#!/bin/bash

echo "-------------------------------------------"
echo "       SIMPLE DISK USAGE ANALYZER"
echo "-------------------------------------------"
echo ""
echo "This program will show how much space"
echo "each file or folder is using inside"
echo "the directory you choose."
echo ""

echo "Please enter the directory path:"
read dir
echo ""

echo "You entered: $dir"
echo "Checking if this directory exists..."
echo ""

if [ ! -d "$dir" ]
then
    echo "Error: The directory you entered does not exist."
    echo "Please run the program again with a correct path."
    exit 1
fi

echo "Great! The directory exists."
echo ""
echo "Now analyzing disk usage inside:"
echo "$dir"
echo "-------------------------------------------"
echo ""

echo "Collecting data... please wait..."
echo ""

du -h --max-depth=1 "$dir" | sort -hr

echo ""
echo "-------------------------------------------"
echo "Analysis complete!"
echo "The above list shows the items ordered"
echo "from largest size to smallest size."
echo ""
echo "Thank you for using the Disk Usage Analyzer."
echo "-------------------------------------------"
