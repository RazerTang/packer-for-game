1.if need you should copy exec files into /usr/local/bin,as follow  
sudo cp ./exec/pngquant /usr/local/bin  
sudo cp ./exec/jsbcc /usr/local/bin  
and so on  
2.run script  
 sh packer.sh -p -i $inputdir -o $outputdir #convert png to png8  
 sh packer.sh -b -i $inputdir -o $outputdir #convert ccb to ccbi  
 and so on  
