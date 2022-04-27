set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,14'
set output 'jdq-125V-1.txt' . ".png"
set title 'jdq-125V-1.txt'
set ylabel "Temp"
set xlabel "time(s)"
plot 'jdq-125V-1.txt' using 1:2 with lines
