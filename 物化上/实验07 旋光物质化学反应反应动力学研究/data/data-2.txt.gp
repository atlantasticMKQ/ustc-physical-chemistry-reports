set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,10'
set output "cjq-35-ln.png"
y(x)=k*x+b
set title '旋光度对数时间图'
set ylabel "ln(a(t)-a(inf))"
set xlabel "t(s)"
fit y(x) 'cjq-35-ln.txt' via k,b
plot 'cjq-35-ln.txt' using 1:2 w lp pt 7,y(x)
