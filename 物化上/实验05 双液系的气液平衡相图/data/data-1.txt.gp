set t png
set term png font '/usr/share/fonts/noto-cjk/NotoSansCJK-Regular.ttc,10'
y(x)=k*log(a*x+b)/log(2.71828)+c
set output "标准曲线-对数曲线拟合.png"
set title '摩尔分数-折光率曲线'
set ylabel "折光率(nD)"
set xlabel "摩尔分数"
fit y(x) '标准曲线.txt' via k,a,b,c
plot '标准曲线.txt' using 1:2 with lines,y(x)
