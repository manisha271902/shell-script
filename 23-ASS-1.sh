#!/bin/bash

words=$(awk -F "" '{for (i=1;i<=NF;i++) print $i}' sample.txt)


