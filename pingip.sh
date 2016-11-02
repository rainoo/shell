#!/bin/bash
#
# Copyright(c) 2016 Gittoy Co.Ltd. All Rights Reserved
#
# Program:
# Use ping command to check the network's PC state.
#
# History：
# 2016/06/27    GaoYu(ygao@jinmajia.com)     V1.0 First release
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

network="10.51.52"                    # 先定义一个局域网的前面部分
for sitenu in $(seq 100 200)             # seq为sequence（连续）的缩写之意
do
	# 底下的程序在取得ping的回传值是正确的还是失败的！
	ping -c 1 -w 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
	if [ "${result}" == 0 ]; then
		echo "Server ${network}.${sitenu} is UP."
	else
		echo "Server ${network}.${sitenu} is DOWN."
	fi
done

