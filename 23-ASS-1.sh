#!/bin/bash

awk '{for (i=1;i<=NF;i++) print $i}' sample.txt | wc -w


