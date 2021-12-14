if [ -d ~/.notes_list ]
then
	if [ -f ~/.notes_list/notes.txt ]
    then
    	echo "notes_list is already ready"
    fi
else
	mkdir ~/.notes_list
    touch ~/.notes_list/notes.txt
    echo "notes_list has been set up"
fi


