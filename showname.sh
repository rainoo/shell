#!/bin/bash
#
#Copyright(c) 2016 Gittoy Co.Ltd. All Rights Reserved
#
#Program:
#User inputs his first name and last name. Program shows his full name.
#
#History：
#2016/06/27    GaoYu(ygao@jinmajia.com)     V1.0 First release
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
read -p "Please input your first name: " firstname       #提示使用者输入
read -p "Please input your last name: " lastname         #提示使用者输入
echo -e "\nYour full name is: ${firstname} ${lastname}"  #结果由屏幕输出
