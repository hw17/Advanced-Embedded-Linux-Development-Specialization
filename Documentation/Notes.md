Linux commands:

find . -name a_directory -> Find files/directories below the current directory "." with name a_directory
grep -r "something" * -> Searching for content "somenthing" in files below the current directory
  - * in means files with any character in the name
Pipe character '|' sends the output of one command to the input of another command
  - Chain commands together based on standard input/output s streams:
  - example 1: cat text.txt | grep "something"
  - example 2: grep -r "something" * > searchresult.txt -> Send the output of a cmd to a new file
  - example 3: echo "hello" >> searchresult.txt -> append the output of a comd into an existing file
  - example 4: ls -la | grep somefile.txt -> verify contains somefile.txt

File permission: 
  |user (owner)                  ||   group  || Everyone  |
  |read (r)|write (w)|execute (x)|| r| w | x || r | w | x |

  chmod 1st digit (owner) 2nd digit (group) 3rd digit (everyone):
  values: 4=read, 2=write, 1=execute
  - example: 634 means owner can r and w, group can w and x, everyone can r.
  - example 1: chmod 766 file -> owner can r,w & x, group can r&w and everyone can r&w


assigment 1:

https://cvw.cac.cornell.edu/linux/intro/index 

Linux System Programming Chapter 1.

https://ryanstutorials.net/bash-scripting-tutorial/bash-variables.php
 
https://ryanstutorials.net/bash-scripting-tutorial/bash-if-statements.php


Links to books

Linux System Programming, 2nd Edition

https://docs.google.com/file/d/0B2dlGZ_3bOSvQ0luWWl3V0NyVUE/edit?resourcekey=0-2UKmsobQOmkhD-b6kijJPg

Mastering Embedded Linux Programming, 2nd Edition (MELP)

https://github.com/PacktPublishing/Mastering-Embedded-Linux-Programming-Second-Edition

Linux Device Drivers 3rd Edition (LDD)

https://github.com/lancetw/ebook-1/blob/master/03_operating_system/Linux%20Device%20Drivers.3rd.Edition.pdf

https://class.ece.iastate.edu/cpre488/resources/ldd3.pdf
