#!/bin/sh

# Author	: Andreas Finck
# Date		: 24.03.2022
# Version	: 0.1
# Subject	: Autocreate scripts

DIR="$HOME/.bin/"
# Get the users full name
UNAME=$(getent passwd $(whoami) | cut -d ':' -f 5)
DATUM=$(date +%d.%m.%Y)
FIL=$1
FT=".sh"
FILE=$FIL$FT
SHEBANG="#!/bin/bash "
AUTHOR="# Author"
TEXTDATE="# Date"
SUBJECT="# Subject"

# check if bin dir exits and if not create it
if [ ! -d "$DIR" ]; then
	mkdir ~/bin > /dev/null 2>&1
fi

if [ -e $FILE ]; then
	echo "No file name given!"
	exit 1
fi

echo $SHEBANG > $DIR$FILE
echo >> $DIR$FILE
echo -e $AUTHOR"\t: "$UNAME >> $DIR$FILE
echo -e $TEXTDATE"\t\t: "$DATUM >> $DIR$FILE
echo -e $SUBJECT"\t: " >> $DIR$FILE
echo >> $DIR$FILE
echo >> $DIR$FILE
# making it executable
chmod +x $DIR$FILE
# open it in vi
if [ $EDITOR = 'vim' ]; then
	$EDITOR +7 $DIR$FILE
else
	/usr/bin/vi $DIR$FILE
fi
