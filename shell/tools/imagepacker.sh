#!/bin/sh

#  packer.sh
#  PublishTools
#
#  Created by Razer on 14-11-20.
#  Copyright (c) 2014年 Razer. All rights reserved.

#
#@param 1 input  path
#@param 2 output  path
#@param 3 format  RGBA8888

#formats=("RGBA8888" "RGBA4444" "RGB565")
format=$3
folder=${1##*/}
outputsheet=$2/$folder.png
outputdata=$2/$folder.plist
echo $outputsheet
echo $outputdata
echo folder=$folder
echo $format

tp="/usr/local/bin/TexturePacker"
arguments="\
--smart-update \
--format cocos2d \
--algorithm MaxRects \
--max-height 2048 \
--max-width 2048 \
--maxrects-heuristics best \
--shape-padding 2 \
--border-padding 2 \
--opt $format \
--data $outputdata \
--sheet $outputsheet \
--replace ^=$folder/ \
$1/*.png"

echo $arguments
$tp $arguments
