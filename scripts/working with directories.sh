

echo "hello from my first script!"
pwd #used to check the directory you are in
ls #lists the content of your current directory
#cd is used to change the directory


WORKING WITH DIRECTORIES

#man stands for manual
man man #in order to exit the manual page press q
#man pwd checks the command of pwd

man mkdir where #mkdir is used to make directories
mkdir Test

cd Test/
mkdir Test2 
mkdir -p Linux/Ubuntu/josh  #here we are creating a folder named linux then anther folder inside linux called  ubuntu then another one inside ubuntu called josh
 man rmdir #rmdir is used to remove a folder
rmdir Test2

cd
cd Test/
rmdir Test2
 YOU CANNOT REMOVE A DIRECTORY WITHIN A DIRECTORY OR A DIRECTORY THAT IS NOT EMPTY
YOU HAVE TO ALSO DELETE THE FOLDERS WITH IN IT as shown below
cd
cd Test/
cd Test2/
rmdir -p Linux/Ubuntu/josh
ls
