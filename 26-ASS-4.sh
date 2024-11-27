#!/bin/bash
sudo dnf install rs -y
echo $(rs -Tzc: < ass.txt)

