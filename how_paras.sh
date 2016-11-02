#!/bin/bash
#
# Copyright(c) 2016 Gittoy Co.Ltd. All Rights Reserved
#
# Program:
# Program shows the script name, parameters...
#
# History：
# 2016/06/27    GaoYu(ygao@jinmajia.com)     V1.0 First release
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "The script name is           ==>${0}"
echo "Total parameter number is    ==>$#"
[ "$#" -lt 2 ] && "The number of parameter is less than 2. Stop here." && exit 0
echo "Your whole parameter is      ==>'$@'"
echo "The 1st parameter            ==>${1}"
echo "The 2nd parameter            ==>${2}"

