#!/bin/bash
#author - yash
#find -type f -not -name [filename or extension] -delete
#rm -r !(*.mp4|"merge_videos.sh");   
rm -r *.srt *.vtt *.txt *.zip *.html;
ls > list.txt;
head -n -1 list.txt > temp.txt ; mv temp.txt list.txt;
head -n -1 list.txt > temp.txt ; mv temp.txt list.txt;

while read -r line
do
    echo "file '$line'"
    # do something
done < "list.txt" > list2.txt;
rm list.txt;
mv list2.txt order.txt
ls
printf "\n\nALERT\n"
printf "The videos will be merged in the order printed above.\nIf you want to modify the order or ommit some videos from the list then you can modify the order.txt file created in current-dir. Dont forget to save the changes done to order.txt file.\nPress enter to proceed"
read my_var

sudo apt install ffmpeg;
varname=${PWD##*/}.mp4;
varname="${varname// /_}"
ffmpeg -f concat -safe 0 -i list2.txt -c copy ${varname};
rm order.txt 
#rm list.txt list2.txt
#echo "hello yash"

#END
