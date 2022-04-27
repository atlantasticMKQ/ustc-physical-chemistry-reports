for file in *.txt \
cat ../script/plot.gp | sed "s/ARG\[1\]/'$file'/g" >../script/{$file}.gp \
gnuplot -c ../script/{$file}.gp \
end
