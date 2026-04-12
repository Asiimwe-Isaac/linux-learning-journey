
man file #This is used to determine the manual of a file 
mkdir FILES
#if you want to get information about a file you just use the command in the  file Readme.md if you want to see the content in the readme.md file
#if you want to go up a directory you use the command cd ..

CREATING FILES
man touch
cd FILES
touch file1.txt
touch file2.txt file3.txt #you can create mulitple files using this
touch file4.txt file5.txt

REMOVING FILES
man rm
rm file1.txt
rm  file2.txt file3.txt #this is to remove multiple files
#After this you will be asked where you have to type yes or no to remove the file
cd
mkdir FILES2
#Another way to remove a directory is rm -rf FILES2/

COPYING FILES
cd FILES
man cp # cp is used for copying
cp file4.txt file1cp.txt
ls
cp file4.txt /home/FILES2/  #here we are copying a file to another directory and you have to put the path of that directory
cd FILES2
touch file6.txt file7.txt
COPYING DIRECTORIES
cd
cp -r FILES2 FILES2CP #this copies the directory FILES2
ls
cd FILES2CP
ls
man mv #mv is used to rename a file
mv FILES FILE

