#!C/Program_Files/git/bin/bash

cd /C/pic

while true
do
	fc="$(ls|wc -l)"
	if [ $fc -gt 0 ];then
	
			FILES=/C/pic/*	
			for f in $FILES 
			do
				D:/Program_Files/Git/bin/git add $f
				D:/Program_Files/Git/bin/git commit -m "$(date +%H-%M-%S)"
				D:/Program_Files/Git/bin/git remote add origin https://github.com/q791305/55666.git
				D:/Program_Files/Git/bin/git push -u origin master
				D:/Program_Files/Git/bin/git remote remove origin			
			done
	fi;
	
	rm -rf /C/pic/*
	sleep 3
done