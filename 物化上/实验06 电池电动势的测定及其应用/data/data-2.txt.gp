set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,10'
set output "E-T.png"
y(x)=k*x+b
set title '电动势温度曲线'
set ylabel "E(V)"
set xlabel "T(K)"
fit y(x) '1.txt' via k,b
plot '1.txt' using 1:2 w lp pt 7,y(x)
