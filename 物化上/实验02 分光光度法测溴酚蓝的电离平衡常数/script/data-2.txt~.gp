set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,14'
set output 'data-2.txt~' . ".png"
set title 'data-2.txt~'
set ylabel "lg()"
set xlabel "pH"
plot 'data-2.txt~' using 1:2 with lines
