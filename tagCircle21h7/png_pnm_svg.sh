#!/bin/bash

for src in *.pnm; do
    name=`basename $src .pnm`
   
    pnm="$name.pnm"
    svg="$name.svg"

    #pngtopnm -mix $src > $pnm && 
    
    autotrace -input-format pnm -output-format svg -output-file $svg $pnm && rm $pnm
    
    # potrace $pnm -s -o $svg 
    # set colour
    # sed -i "s/#000000/#016b8f/g" *.svg
    # same for PNG
    # mogrify -fill '#016b8f' -opaque black *.png
done