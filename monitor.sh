#!/bin/bash
echo "CPU usage: "
top -bn1 | head -n 5

echo " per-process CPU usage: "
top -b -o %CPU | head -n 10
