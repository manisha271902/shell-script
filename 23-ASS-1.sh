#!/bin/bash

words=$(awk -F " " '{for (i=1;i<=NF;i++) print %s $i sample.txt}')

