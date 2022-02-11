#!/bin/bash
# script for downloading 

# array of tweets with videos to be downloaded
YOUTUBEDL_TWTTR_VIDEOS=('https://twitter.com/IwriteOK/status/1489058710831861763' 
	'https://twitter.com/KwajoHousing/status/1488850915281022978' 
	'https://twitter.com/IwriteOK/status/1489058710831861763')
 
# iterate through array with youtube-dl
for video in "${YOUTUBEDL_TWTTR_VIDEOS[@]}"
do
  echo "downloading video from $video, please wait ..."
  youtube-dl "-o%(title).100s-%(id)s.%(ext)s" $video   # limits video title to 100 characters so youtube-dl doesn't break
  echo "done"
done