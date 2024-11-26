#!/bin/bash

s=awk '{for (i=1;i<=NF;i++) count[$i]++}' sample.txt 
echo $s


