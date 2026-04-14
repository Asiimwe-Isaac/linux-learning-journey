man head 
cd FILES
head -5 file4.txt #shows the first 5 lines of the file
man tail #outputs the last part of th file
tail file4.txt # outputs the last 10 lines of the file4.txt
man cat # concatenate and print on the standard output (prints the whole content of the file)
man echo # display line of texts
echo Hello world >file4.txt #it will put the content in the file4.txt
cat file4.txt
echo how are you? >file5.txt
echo good morning >file6.txt
cat file4.txt file5.txt file6.txt # prints out all the content of the files together
cat file4.txt file5.txt file6.txt >all.txt #prints all the content of the files in another file call all.txt
cat all.txt
cat > fileo.txt # cat can also help you create a file with content as follows. but the > has to be there. then you write the content in as many lines you want. press ctrl d to save the changes.
I am having a good day.
how is your day going?
cat fileo.txt
ls
# cat can be used to copy files
cat fileo.txt > file0.txt
ls
cat file0.txt
man more # if you want to see content of a very large  content file 
