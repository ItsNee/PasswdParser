#!/bin/bash

#Being totally useless lol but if you're curious => echo "My_Lame_Banner" | gzip | base64 -w0
base64 -d <<<"H4sIAAAAAAAAA82UUQ7DIAiG3zmFx93jTHRNlng5T7LWVQUErTNN1viggL8fgo2vR2TDb6bOTJ2TiGJnLhqDo4hHP7NxDOzfc+4m+Z2PqUCeuuifx+DpWJSN7TIUd6OFb0Q7Z2Q/RxjZrRGAbyFaJeU6gFJoEpDKsCuQ+3c8gHl90PrOVSzukrSu9NlOTJuE5CJVa4WoF9+QSs8sa8wXwUb/Fijmei81htaR6QTcQ0N7e1OoLoMyXGVSshsxuSqtvkCo3KzC5aq14h9tdxIE5b+FNpF/hWGr3u6+HVPiR6p16TzLCt8maQCvWy6RaK5XnDjzStHAIXzV3duzYzIcFBTkOYoVMkkDzF99APABbDjQjWkJAAA=" | gunzip

#Declaring file
file=$1
output="1"
#Checking if file has been declared lol
if [ -z "$file" ]
then
    #Begging you to input a file
    echo "Plz enter za file nameeee"
    exit 1
fi
#Displaying the date run to look cool? lol
echo Started on: $(date)
#Letting you know the file that its gona parse
echo File to parse: $file
#Useless Space
echo ""

#Declaring a dumb counter :()
counter=1
#4eva loop
while true
do
    #The actual work lol
    output=$(cut -d ":" -f $counter $file) 
    #Spit out each line
    echo $counter  = $output:
    #Outputs entries into a new file
    echo $output: >> passwd.refined
    #Increments the counter to print the other linez
    counter=$(( $counter + 1 ))
    #If there is no more lines in the file........
    if [ -z "$output" ]
    then
    #Do sumting
    sed 's/ /\n/g' passwd.refined > passwd.refined2
    #just suicide and byebye
    exit 1
    fi
done
#while read -r line; do echo $line; done < passwd.refined
