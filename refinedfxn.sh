#! /usr/bin/bash

args=("$@")
length=$#

for (( i=0; i<$length; i++ ))
do
	echo "the argument you have given is ${args[$i]} "
	(echo " ${args[$i]}" >> ~/wl_dir/wl.txt) 
done


