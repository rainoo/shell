#!/bin/bash
#
# Copyright(c) 2016 Gittoy Co.Ltd. All Rights Reserved
#
# Program:
# Try do calculate 1+2+...+${your_input}.
#
# History：
# 2016/06/23    GaoYu(ygao@jinmajia.com)     V1.0 First release
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

read -p "请输入一个数字，程序将自动计算1+2+...+你输入的数字: " nu

s=0
for (( i=1; i<=${nu}; i=i+1 ))
do
	s=$((${s}+${i}))
done
echo "计算的结果'1+2+3+...+${nu}'为==>${s}"
