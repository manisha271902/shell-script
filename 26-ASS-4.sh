#!/bin/bash
sudo dnf install rs
echo $(rs -Tzc < ass.txt)
