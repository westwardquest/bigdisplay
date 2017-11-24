IP=$1
W=$2
H=$3
gst-launch-1.0 -q filesrc location=alphabet.png ! pngdec ! imagefreeze ! videoconvert ! videoscale ! \
	       video/x-raw,width=$W,height=$H ! \
	       rgb2bayer ! video/x-bayer,format=gbrg ! fdsink \
    | python rgbgmovie.py $IP /dev/stdin $W $H 1
