#!/bin/bash

echo "Running script to cleanup some files"
echo "Sit back and Relax while we remove some unnecessary files..."
echo -e "\n#####################################################################\n"

DIR=$1

if [ -z $DIR ]
then
	echo "Please enter name of folder to do code cleanup :|"
else
	echo "Folder selected is : $DIR"
	DirPath="$PWD/$DIR/src/"
	echo "Full path is : $DirPath"
	echo "Removing files: App.css App.test.js index.css logo.svg"
	echo -n "Do You confirm [y/n]: "
	read confirm
	echo "value is: $confirm"
	if [ "$confirm" == "y" ] || [ "$confirm" == "Y" ]
	then
		sed -i '3d' $DirPath/index.js
		cat App.js > $DirPath/App.js
		rm $DirPath/App.css $DirPath/App.test.js $DirPath/index.css $DirPath/logo.svg
		
		echo "All done ! Happy Coding:)"
	else
		echo "Aborting Deletion of files! You are free to do it manually."
	fi
fi

