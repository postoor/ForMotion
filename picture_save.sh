#!/bin/bash
_DELAY=120
_DELAY_FILE='/tmp/motionTime.txt'
_PICTURE_FILE=$1
_MAIL_ADDR='your@email.addr'

_PICTURE_PATH='/your_picture_dir'
_MAX=40000
_LAVE_AMOUNT=5000

if [ -f $_DELAY_FILE ]
then
	_LAST_TIME=$(cat $_DELAY_FILE)
else
	_LAST_TIME=0
fi
echo $_LAST_TIME

if [[ $(( $_LAST_TIME + $_DELAY )) < $(date +"%s") ]]
then
	echo $(date +"%s") > $_DELAY_FILE
	mpack -s "發現變動 $(date +'%c')" $_PICTURE_PATH $_MAIL_ADDR

fi

count=$(ls $_PICTURE_PATH | wc -l)

if [[ $count -gt $_MAX ]]
then
        cd $_PICTURE_PATH
        ls  | sort -r | tail -n $(($count - $_LAVE_AMOUNT)) | xargs -n 1 rm 
fi

exit 0

