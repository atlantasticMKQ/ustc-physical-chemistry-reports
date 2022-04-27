set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,10'
y(x)=k*x+b
set output "1-1.png"
set title 'ln(p)-1/T曲线'
set ylabel "ln(p)"
set xlabel "1/T"
fit y(x) '1-1.txt' via k,b
plot '1-1.txt' using 1:2 with lines,y(x)
