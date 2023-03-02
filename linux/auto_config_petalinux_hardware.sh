#!/bin/sh

echo -e "\e[1;33m1 : AXU2CG-E\e[0m"
echo -e "\e[1;33m2 : AXU3EG\e[0m"
echo -e "\e[1;33m3 : AXU4EV-E\e[0m"
echo -e "\e[1;33m4 : AXU5EV-E\e[0m"
echo -e -n "\e[1;32mPlease select your board model\e[0m\e[1;5;32m: \e[0m"
read BOARD_MODEL_INDEX

if [[ $BOARD_MODEL_INDEX -eq 1 ]];then
	BOARD_MODEL=AXU2CG-E
elif [[ $BOARD_MODEL_INDEX -eq 2 ]];then
	BOARD_MODEL=AXU3EG
elif [[ $BOARD_MODEL_INDEX -eq 3 ]];then
	BOARD_MODEL=AXU4EV-E
elif [[ $BOARD_MODEL_INDEX -eq 4 ]];then
	BOARD_MODEL=AXU5EV-E
else
	echo -e "\e[1;31mInput parameter error\e[0m\n."
	exec "$0" "$@"
fi

cd ./petalinux
petalinux-config --get-hw-description ../hardware/$BOARD_MODEL --silentconfig
echo -e "\e[1;32m$BOARD_MODEL hardware set over\e[0m."
echo -e 'Now you can use command:"\e[1;32mpetalinux-bulid\e[0m" to compile the petalinux project\e[0m.'

echo -e "\e[1;33mEnter path $PWD\e[0m"
exec bash
