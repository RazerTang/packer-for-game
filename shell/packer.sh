#!/bin/sh

function printUsage(){
	echo "-png8 create png8 \n"
	echo "-jsc crate jsc file \n"
	echo "-texturepacker \n"
	echo "-icons create icons for cocos2dx\n"
	echo "-ccbi convert ccb to ccbi\n"
	echo "-svn commit files for svn\n"
	echo "-input input folder or file\n"
	echo "-output output folder or file\n"
	echo "-help show help \n"
	echo "-verbose show verbose \n"
}

local func
local input
local output


