#! /usr/bin/bash

#creating directory and file

if [ -d ~/notes_dir ] 
then 
	echo "directory is present no need to creat";
else
	mkdir ~/notes_dir;
	cd ~/notes_dir;
	touch notes.txt ;
fi
	
#to configure .bashrc and .bashrc_function file

if [ -f ~/.bashrc ]
then
	echo "# read process shell functions
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi" >> ~/.bashrc
else
	touch ~/.bashrc;	
	echo "# read process shell functions
if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi" >> ~/.bashrc
fi


#function to write 
function write(){
	echo "#! /usr/bin/bash

function note(){
	
	args=(\"\$@\")
	length=\$#

	for (( i=0; i<\$length; i++ ))
	do
		echo \" \${args[\$i]} have been appended to the note list \" 
		(echo \" \${args[\$i]}\" >> ~/notes_dir/notes.txt) 
	done

	}" >> ~/.bash_functions

}

# to configure .bashrc_function 


if [ -f ~/.bash_functions ]
then
	write
	
else
	touch ~/.bash_functions;
	write
fi




