#!/bin/sh

#  packer.sh
#  PublishTools
#
#  Created by Razer on 14-11-20.
#  Copyright (c) 2014年 Razer. All rights reserved.

#
#@param 1 input  path
#@param 2 output  path
#
#${test##*/},${test%/*} 分别是得到文件名，或者目录地址最简单方法。
jsbcc="/usr/local/bin/jsbcc"
files=`find $1 -name '*.js'`
for file in ${files[@]};do
relative=${file##$1} #相对路径 1/a.js
output=$2/$relative'c'
foleder=${output%/*}
mkdir -p $foleder #如果不存在文件夹则创建

$jsbcc $file  $output 
done
