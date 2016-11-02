#!/bin/bash
#
# Copyright(c) 2016 Gittoy Co.Ltd. All Rights Reserved
#
# Program:
# This program shows the user's choice.
#
# History：
# 2016/06/27    GaoYu(ygao@jinmajia.com)     V1.0 First release
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

# 读入用户输入数据
read -p "Please input (Y/N): " yn

if [ "${yn}" == "Y" ] || [ "${yn}" == "y" ]; then
	echo "OK, continue"
elif [ "${yn}" == "N" ] || [ "${yn}" == "n" ]; then
        echo "Oh, interrupt!"
else
	# 打印无法识别
	echo "I don't know what your choice is" && exit 0
fi
