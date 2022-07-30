#!/bin/bash
echo "Folder location and file name (e.g: /Users/user/Downloads/AppName.app) :"
read path

if [ -e "$path" ]; then

	folderPath=${path%/*}
	fullAppName=${path##*/}
	appName=${fullAppName%.*}
	
	cd $folderPath
	mkdir Payload
	cp $fullAppName
	# Copying the app in the Payload folder
	cp -r $fullAppName Payload
	# Creating a zip file of the folder:
	zip -r app.zip Payload
	# Deleting the "Payload" folder:
	rm -r Payload

	# Renaming the Resulting File and giving it a proper name:
	mv app.zip $appName.ipa
else
	echo "Wrong path! File does not exist"
fi

