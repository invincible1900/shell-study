# copy paste
strs='';for ((i=0;i<0x100;i++));do strs=$strs"\xaa";done;echo -n $strs > a.bin;


