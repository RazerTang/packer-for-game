#!/bin/sh

#  packer.sh
#  PublishTools
#
#  Created by Razer on 14-11-20.
#  Copyright (c) 2014年 Razer. All rights reserved.

#
#@param 1 input png,1024*1024
#@param 2 output png,include below
#Icon-40.png
#Icon-72.png
#Icon-76.png
#Icon-80.png
#Icon-100.png
#Icon-120.png
#Icon-144.png
#Icon-152.png
#Icon-Small-50.png
#Icon-Small.png
#Icon-Small@2x.png
#Icon.png
#Icon@2x.png
#ItunesArtwork

sips="/usr/bin/sips"

$sips -Z 40  $1 --out $2/Icon-40.png
$sips -Z 72  $1 --out $2/Icon-72.png
$sips -Z 76  $1 --out $2/Icon-76.png
$sips -Z 80  $1 --out $2/Icon-80.png
$sips -Z 100 $1 --out $2/Icon-100.png
$sips -Z 120 $1 --out $2/Icon-120.png
$sips -Z 144 $1 --out $2/Icon-144.png
$sips -Z 152 $1 --out $2/Icon-152.png
$sips -Z 50  $1 --out $2/Icon-Small-50.png
$sips -Z 29  $1 --out $2/Icon-Small.png
$sips -Z 58  $1 --out $2/Icon-Small@2x.png
$sips -Z 57  $1 --out $2/Icon.png
$sips -Z 114 $1 --out $2/Icon@2x.png
$sips -Z 512 $1 --out $2/iTunesArtwork
