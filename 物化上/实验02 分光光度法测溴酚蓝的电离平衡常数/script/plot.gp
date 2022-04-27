set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,14'
set output ARG[1] . ".png"
set title ARG[1]
set ylabel "lg()"
set xlabel "pH"
plot ARG[1] using 1:2 with lines
