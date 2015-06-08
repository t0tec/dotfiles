#!/bin/sh
# usage: gifmaker INPUT SCALE OUTPUT
#
# simple bash script: to convert a video (ffmpeg) to gif
INPUT="$1"
SCALE="$2"
OUTPUT="$3"
TIME="$4"

if [ $# -eq 0 ]; then
    echo "Please use this script as following 'sh gifmaker input.flv 400 output.gif'"
    exit 1
fi

if [ -z "$1" ]; then
    echo "Please specify the input argument"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Please specify the scale argument"
		exit 1
fi

if [ -z "$3" ]; then
    echo "Please specify the ouput argument"
		exit 1
fi

if [ -z "$4" ]; then
		ffmpeg -i $INPUT -vf scale=$SCALE:-1 -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -loop 0 - gif:- | convert -layers Optimize - $OUTPUT
else
		ffmpeg -i $INPUT -vf scale=$SCALE:-1 -t $TIME -r 10 -f image2pipe -vcodec ppm - | convert -delay 5 -loop 0 - gif:- | convert -layers Optimize - $OUTPUT
fi

exit 0
