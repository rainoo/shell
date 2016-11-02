#!/bin/bash
#
#Copyright(c) 2016 Gittoy Co.Ltd. All Rights Reserved
#
#Program:
#Program creates three files. which named by user's input and date command.
#
#History：
#2016/06/27    GaoYu(ygao@jinmajia.com)     V1.0 First release
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#1.让使用者输入文件名，并取得fileuser这个变量；
echo -e "I will use 'touch' command to create 3 files."  #纯粹显示信息
read -p "Please input your filename: " fileuser          #提示使用者输入

#2.为了避免使用者随意按Enter，利用变量功能分析档名是否有设定？
filename=${fileuser:-"filename"}                         #开始判断是否配置文件名

#3.开始利用date命令来取得所需要的档名了：
file1=${filename}$(date --date='2 days ago' +%Y%m%d)   #底下三行子啊配置文件名
file2=${filename}$(date --date='1 days ago' +%Y%m%d)
file3=${filename}$(date +%Y%m%d)

#4.将档名建立吧
touch "${file1}"                             #底下三行在建立文件
touch "${file2}"
touch "${file3}"
