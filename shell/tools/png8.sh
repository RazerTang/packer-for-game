#!/bin/sh

#  packer.sh
#  PublishTools
#
#  Created by Razer on 14-11-20.
#  Copyright (c) 2014年 Razer. All rights reserved.

#
#@param 1 input  path
#@param 1 output  path
#
#${test##*/},${test%/*} 分别是得到文件名，或者目录地址最简单方法。
pngquant="/usr/local/bin/pngquant"
files=`find $1 -name '*.png'`
for file in ${files[@]};do
relative=${file##$1} #相对路径 1/a.png
output=$2/$relative
foleder=${output%/*}
mkdir -p $foleder #如果不存在文件夹则创建

$pngquant $file --output $output --force --verbose
done
