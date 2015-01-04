#!/bin/sh

#  packer.sh
#  PublishTools
#
#  Created by Razer on 14-11-20.
#  Copyright (c) 2014年 Razer. All rights reserved.

#
#@param 1 format index RGBA8888
#@param 2 output plist path
#@param 3 output image path
#@param 4 plist prefix aa/aa.png
#@param 5 input image path
#
formats=("RGBA8888" "RGBA4444" "RGB565")
format=${formats[$1]}
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
--data $2 \
--sheet $3 \
--replace ^=$4/ \
$5/*.png"

echo $arguments
$tp $arguments