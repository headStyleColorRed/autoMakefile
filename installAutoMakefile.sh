FILE=~/.zshrc
AUTOMAKEFILE=~/.auto_makefile/autoMakefile.sh
ZSHRC_EXISTS=false
ALIAS="\n# Auto Makefile\nalias automakefile='sh /Users/naranjito/.auto_makefile/autoMakefile.sh'"



# I N S T A L L   A U T O M A K E F I L E
mkdir ~/.auto_makefile

cp autoMakefile ~/.auto_makefile



# C R E A T E   A L I A S
if [ -f "$FILE" ]; then
	ZSHRC_EXISTS=true
else
    echo "$FILE was created, restart the terminal!"
	echo "$ALIAS" >> ~/.zshrc
fi

if [ $ZSHRC_EXISTS ]; then
	if ! grep  "automakefile" $FILE; then
    	echo "makefile alias was added, restart the terminal!"
    	echo "$ALIAS" >> ~/.zshrc
	fi
fi