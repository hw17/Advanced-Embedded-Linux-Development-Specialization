#!/bin/sh
# Finder script for assigment 1
# Author: Hector Guarneros

# Write a shell script finder-app/finder.sh as described below:
# * Accepts the following runtime arguments: the first argument is a path to 
# a directory on the filesystem, referred to below as filesdir; the second 
# argument is a text string which will be searched within these files, 
# referred to below as searchstr
# * Exits with return value 1 error and print statements if any of the 
# parameters above were not specified
# * Exits with return value 1 error and print statements if filesdir does 
# not represent a directory on the filesystem
# * Prints a message "The number of files are X and the number of matching 
# lines are Y" where X is the number of files in the directory and all 
# subdirectories and Y is the number of matching lines found in respective 
# files, where a matching line refers to a line which contains searchstr 
# (and may also contain additional content).
# Example invocation:

#        finder.sh /tmp/aesd/assignment1 linux

filesdir=$1
searchstr=$2

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Error! Two arguments required: $0 <path_to_file> <text_string>"
    exit 1
fi

# Check if the provided path is a directory 
if [ ! -d "$filesdir" ]; 
    then 
        echo "Error: $filesdir is not a directory." 
        exit 1 
fi 

# Count number of files and number of matching lines 
file_count=$(find "$filesdir" -type f | wc -l) 
matching_lines=$(grep -r "$searchstr" "$filesdir" 2>/dev/null | wc -l) 

# Printing result 
echo "Number of files: $file_count " 
echo "Matching lines numbers: $matching_lines"