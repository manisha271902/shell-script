#Display the top 5 cpu consuming process in linux, send alert if reaches more than threshold


#!/bin/bash
USAGE=$(ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6)