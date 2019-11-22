#!/bin/bash

file="notes"

if [ -n "$1" ]
then
    file="$1"
fi

echo
echo [1] skapa ny anteckningsfil
echo [2] lägg till en anteckning till filen
echo [3] skapa en kopia av anteckningsfilen
echo [4] avsluta

while true; do
    echo
    read -p 'Write what should I do: ' input
    echo

    # Create/overwrite a new empty file: notes.txt.
    if [[ $input = "1" ]]; then
        > $file.txt
        echo You have made a new file $file
        
    # User writes the line. Line added to notes.txt.
    elif [[ $input = "2" ]]; then
        read -p 'Write your line here: ' new_line 
        echo $new_line >> $file.txt
        echo You have added the line to the file.

    # Write a new file name 
    # Copy file notes.txt to the new file.
    elif [[ $input = "3" ]]; then
        read -p 'Write new file name: ' new_name
        cp $file.txt $new_name.txt
        
    # Skript loops  until "4". Write "GoodBye" and end script 
    elif [[ $input = "4" ]]; then
        echo Well done! See you later!
        exit 0

    fi
done