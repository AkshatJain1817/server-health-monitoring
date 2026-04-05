#!/bin/bash
echo "CPU USAGE: "
echo "$var1 $var2"
top -b -n 1 | head -n 5

echo "$var1

$var2"

echo "PER-PROCESS CPU USAGE: "
echo "$var1 $var2"
top -b -o %CPU | head -n 10


echo "$var1

$var2"

echo "VIRTUAL MEMORY USAGE: "
echo "$var1 $var2"
vmstat

echo "$var1

$var2"

echo "MEMORY USAGE PER-PROCESS: "
echo "$var1 $var2"
ps aux --sort=-%mem | head -n 10

echo "$var1

$var2"

echo "DISK STORAGE: "
echo "$var1 $var2"
df -h

echo "$var1

$var2"

echo "ACTIVE CONNECTIONS: "
echo "$var1 $var2"
netstat -a | head -n 10

echo "$var1

$var2"

echo "LATENCY AND PACKET LOSS: "
echo "$var1 $var2"
ping -c 20 8.8.8.8 | tail -n 2
