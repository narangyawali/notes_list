#! /usr/bin/bash

function checkOrcreatfile(){

	if [ -f ~/wl_dir/test.txt ]
	then
		echo "test file is present on wl_dir directory"
	else
		touch ~/wl_dir/test.txt
		echo "i think the file is created in that directory"
	fi

}


checkOrcreatfile



