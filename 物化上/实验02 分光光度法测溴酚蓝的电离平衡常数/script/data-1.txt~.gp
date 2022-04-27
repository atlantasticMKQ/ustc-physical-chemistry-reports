set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,14'
set output 'data-1.txt~' . ".png"
set title 'data-1.txt~'
set ylabel "lg()"
set xlabel "pH"
plot 'data-1.txt~' using 1:2 with lines
