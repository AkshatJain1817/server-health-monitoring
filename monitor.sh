#!/bin/bash
exec > >(tee "output_$(date +%F_%H-%M-%S).txt") 2>&1
set -e

print_section() {
        echo
        echo "=========$1========="
        echo
}

print_section "CPU USAGE"
top -b -n 1 | head -n 5

print_section "PER-PROCESS CPU USAGE"
top -b -o %CPU | head -n 10

print_section "VIRTUAL MEMORY USAGE"
ss -tuln | head -n 10

print_section "MEMORY USAGE PER-PROCESS"
ps aux --sort=-%mem | head -n 10

print_section "DISK STORAGE"
df -h

print_section "ACTIVE CONNECTIONS"
netstat -a | head -n 10

print_section "LATENCY AND PACKET LOSS"
ping -c 20 8.8.8.8 | awk '
/packet loss/ {
    split($0, a, ",")
    print "Packet Loss: " a[3]
}
/rtt/ {
    split($0, b, "/")
    print "Avg Latency: " b[5] " ms"
}'
