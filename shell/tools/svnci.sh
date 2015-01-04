#!/bin/sh

#  packer.sh
#  PublishTools
#
#  Created by Razer on 14-11-20.
#  Copyright (c) 2014年 Razer. All rights reserved.

#@param 1 svn working copy
#判断是否有冲突文件
SVN_FILE=`svn status $1 --username $2 --password $3`
#echo  "$SVN_FILE"
ALL_FILE=(`echo "$SVN_FILE" | awk '{printf "%s ", $2}'`)
len1=${#ALL_FILE[@]}


TO_ADD_FILE=(`echo "$SVN_FILE" | grep ^? | awk '{printf "%s ", $2}'`)
len2=${#TO_ADD_FILE[@]}

TO_DEL_FILE1=(`echo "$SVN_FILE" | grep ^D | awk '{printf "%s ", $2}'`)
len3=${#TO_DEL_FILE1[@]}

TO_DEL_FILE2=(`echo "$SVN_FILE" | grep ^! | awk '{printf "%s ", $2}'`)
len4=${#TO_DEL_FILE2[@]}

TO_MODIFY_FILE=(`echo "$SVN_FILE" | grep ^M | awk '{printf "%s ", $2}'`)
len5=${#TO_MODIFY_FILE[@]}

let totalLen=$len2+$len3+$len4+$len5
echo $totalLen $len5
if [ $len1 -eq $totalLen ];then

        if [ "$TO_ADD_FILE" != "" ];then
        #		echo ${TO_ADD_FILE[*]}
        #		echo "###########1"
        svn add ${TO_ADD_FILE[*]}
        fi

        if [ "$TO_DEL_FILE1" != "" ];then
        #		echo "${TO_DEL_FILE1[*]}"
        #		echo "############2"
        svn delete ${TO_DEL_FILE1[*]}
        fi

        if [ "$TO_DEL_FILE2" != "" ];then
        #		echo "${TO_DEL_FILE2[*]}"
        #		echo "#############3"
        svn delete ${TO_DEL_FILE2[*]}
        fi

        if [ "$TO_MODIFY_FILE" != "" ];then
        #		echo "${TO_MODIFY_FILE[*]}"
        echo "do nothing"
        fi
        svn ci $1/* -m "ci all resources"
fi
