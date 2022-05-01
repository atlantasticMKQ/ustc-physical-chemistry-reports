#!/usr/bin/fish
for file in *.txt
    set name (basename -s .txt $file)
    cat plot.gp | sed "s/ARG0/'$name'/g" | sed "s/ARG1/'$file'/g" > $name.gp
    gnuplot -c $name.gp
end
