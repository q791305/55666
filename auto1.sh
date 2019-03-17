#! /bin/bash

cd /e/Python/Workspace

while true
do 
	fc="$(ls| wc -l)"
	if [ $fc -gt 0 ];
		then
		
			/mingw64/bin/git add .
			/mingw64/bin/git commit -m "$(date +%H-%M-%S)"
			/mingw64/bin/git remote add origin https://github.com/YenChou/python.git
			/mingw64/bin/git push -u origin master
			/mingw64/bin/git remote remove origin
			
		fi;
		sleep 3
done