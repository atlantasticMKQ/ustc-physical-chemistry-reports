set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,14'
set output ARG0 . ".png"
set title ARG0
set ylabel "Temp(℃)"
set xlabel "time(s)"
plot ARG1 using 1:2 with lines title "温度时间曲线"
