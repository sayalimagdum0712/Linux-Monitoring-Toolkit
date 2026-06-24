#!/bin/bash

echo "===== Linux Monitoring Toolkit ====="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Current User:"
whoami

echo ""
echo "Date:"
date

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h

echo ""
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"

echo ""
echo "Top 5 Processes:"
ps aux --sort=-%cpu | head -6
