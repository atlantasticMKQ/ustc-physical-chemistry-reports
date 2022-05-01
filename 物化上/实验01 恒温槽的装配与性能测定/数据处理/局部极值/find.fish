#!/usr/bin/fish
gcc findMax.c -o findMax
gcc findMin.c -o findMin

for file in *.txt
    echo $file
    echo "局部极大值点"
    cat $file | ./findMax (wc -l $file | awk '{print $1}') 
    echo "局部极小值点"
    cat $file | ./findMin (wc -l $file | awk '{print $1}') 
end
