set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,14'
set output 'DTC-2AI-200V-2.txt' . ".png"
set title 'DTC-2AI-200V-2.txt'
set ylabel "Temp"
set xlabel "time(s)"
plot 'DTC-2AI-200V-2.txt' using 1:2 with lines
