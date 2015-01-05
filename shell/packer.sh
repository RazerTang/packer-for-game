#!/bin/sh

function printUsage(){
	echo "-p png8 create png8"
	echo "-j jsc crate jsc file"
	echo "-t texturepacker"
	echo "-c icons create icons for cocos2dx"
	echo "-b ccbi convert ccb to ccbi"
	echo "-s svn commit files for svn"
	echo "-i input input folder or file"
	echo "-o output output folder or file"
	echo "-h help show help"
	echo "-v verbose show verbose"
	echo "-f format  only use for -t,RGBA8888 RGBA4444 RGBA565"
}
g_func="" #1 png8 2 jsc 3 texturepacker 4 icons 5 ccbi 6 svn
g_input=""
g_output=""
g_verbose=0 #0 not show verbose, 1 show verbose
g_format=""
while getopts "pjtcbshvi:o:f:t::" arg
do
	case $arg in
		h) printUsage;;
		v) g_verbose=1;;
		p) g_func=1;;
		i) g_input=$OPTARG;;
		o) g_output=$OPTARG;;
		j) g_func=2;;
		t) g_func=3;;
		c) g_func=4;;
		b) g_func=5;;
		s) g_func=6;;
		f) g_format=$OPTARG;;
	esac
done

echo func=$g_func
echo input=$g_input
echo output=$g_output
echo foramt=$g_format

if [ $g_func = 1 ]; then 
	sh ./tools/png8.sh $g_input $g_output
elif [ $g_func = 2 ]; then
	sh ./tools/jsc.sh $g_input $g_output
elif [ $g_func = 3 ]; then
	sh ./tools/imagepacker.sh $g_input $g_output $g_format
elif [ $g_func = 4 ]; then
	sh ./tools/icon.sh $g_input $g_output
elif [ $g_func = 5 ]; then
	sh ./tools/ccbi.sh $g_input $g_output
elif [ $g_func = 6 ]; then
	sh ./tools/svnci.sh $g_input 




fi
