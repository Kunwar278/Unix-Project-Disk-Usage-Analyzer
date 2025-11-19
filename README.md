# Disk Usage Analyzer (Shell Script)

A simple beginner-friendly Unix shell script that displays which files or subdirectories take up the most space inside a given directory.  
This project uses only basic Unix commands such as `du`, `sort`, `echo`, and simple shell scripting constructs.

---

## 📌 Features

- Accepts a directory path from the user  
- Checks whether the directory exists  
- Displays disk usage of items inside that directory  
- Sorts output from largest to smallest  
- Works on Linux, macOS, WSL, Git Bash, and online bash compilers  

---

## 🗂️ How It Works

The script uses:

- `du -h --max-depth=1` → to show directory sizes  
- `sort -hr` → to sort output in descending order  
- `read` → to take input from user  
- `if` condition → to check directory existence  

All commands are from basic Unix modules commonly taught in introductory Unix programming labs.

---
ScreenShot of Output:
<img width="461" height="770" alt="Screenshot 2025-11-19 112346" src="https://github.com/user-attachments/assets/18181ef8-57af-4852-952c-08442ff57fa8" />

## 🧾 Script

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
