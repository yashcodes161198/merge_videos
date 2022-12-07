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

sudo apt install ffmpeg;
ffmpeg -f concat -safe 0 -i list2.txt -c copy merged.mp4;
#echo "hello yash"

#END