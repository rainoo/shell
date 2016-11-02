#!/bin/bash
#
# Copyright(c) 2016 Gittoy Co.Ltd. All Rights Reserved
#
# Program:
# Repeat question until user input correct answer.
#
# History：
# 2016/06/27    GaoYu(ygao@jinmajia.com)     V1.0 First release
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

while [ "${yn}" != "yes" -a "${yn}" != "YES" ]
do
	read -p "Please input yes/YES to stop this program: " yn
done
echo "OK! you input the correct answer."
