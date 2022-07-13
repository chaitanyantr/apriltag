#!/bin/bash


for f in ./*.png ; do convert "$f" -scale 1000% "${f%.png}.pnm" ; done
