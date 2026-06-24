# Linux Monitoring Toolkit

## Project Overview

Linux Monitoring Toolkit is a Bash scripting project designed to collect and display important system health metrics from a Linux server.

This project helps Linux Administrators and DevOps Engineers quickly check the health and performance of a server without executing multiple commands manually.

The toolkit gathers information related to:

* Hostname
* Current User
* Current Date and Time
* System Uptime
* Memory Usage
* Disk Usage
* CPU Utilization
* Top Running Processes

---

# Why This Project?

In production environments, engineers frequently need to monitor server health.

Instead of running several commands individually, this toolkit automates the process and generates a consolidated report.

Benefits:

* Faster troubleshooting
* Better visibility of system resources
* Reduced manual effort
* Introduction to Linux automation using Bash scripting

---

# Project Architecture

User
↓
monitor.sh
↓
Linux Commands
↓
System Health Report

---

# Technologies Used

* Linux (Ubuntu)
* Bash Scripting
* Git
* GitHub
* AWS EC2

---

# Project Structure

linux-monitoring-toolkit/

├── monitor.sh

├── README.md

└── reports/

```
└── report.txt
```

---

# Commands Used

## 1. hostname

Purpose:

Displays the hostname of the server.

Command:

hostname

Example Output:

ip-172-31-46-109

---

## 2. whoami

Purpose:

Displays the currently logged-in user.

Command:

whoami

Example Output:

root

---

## 3. date

Purpose:

Displays the current date and time.

Command:

date

---

## 4. uptime

Purpose:

Displays how long the system has been running.

Command:

uptime

Sample Output:

10:20:00 up 2 hours, 1 user

---

## 5. free -h

Purpose:

Displays memory utilization.

Command:

free -h

Information Provided:

* Total RAM
* Used RAM
* Free RAM
* Available RAM

---

## 6. df -h

Purpose:

Displays disk space utilization.

Command:

df -h

Information Provided:

* Total Disk Space
* Used Space
* Available Space
* Usage Percentage

---

## 7. top

Purpose:

Displays real-time CPU and process information.

Command Used:

top -bn1 | grep "Cpu(s)"

Information Provided:

* CPU Usage
* Idle CPU Percentage

---

## 8. ps aux

Purpose:

Displays running processes.

Command Used:

ps aux --sort=-%cpu | head -6

Information Provided:

* Process ID
* CPU Consumption
* Memory Consumption
* Running Processes

---

# Script Used

```bash
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
```

# Setup Instructions

## Step 1: Launch AWS EC2 Instance

* AMI: Ubuntu Server 24.04 LTS
* Instance Type: t3.micro
* Configure Security Group:

  * SSH (22) from My IP

---

## Step 2: Connect to EC2

```bash
ssh -i key.pem ubuntu@<public-ip>
```

## Step 3: Create Project Directory

```bash
mkdir linux-monitoring-toolkit
cd linux-monitoring-toolkit
```

## Step 4: Create Script

```bash
nano monitor.sh
```

Paste the script content and save.

---

## Step 5: Make Script Executable

```bash
chmod +x monitor.sh
```

---

## Step 6: Execute Script

```bash
./monitor.sh
```

---

## Step 7: Generate Report

```bash
mkdir reports

./monitor.sh > reports/report.txt
```

View Report:

```bash
cat reports/report.txt
```

---

# GitHub Integration

Initialize Git Repository:

```bash
git init
```

Add Files:

```bash
git add .
```

Commit Files:

```bash
git commit -m "Initial Linux Monitoring Toolkit"
```

Push to GitHub:

```bash
git push -u origin main
```

---

# DevOps Relevance

This project demonstrates:

* Linux Administration
* Bash Scripting
* Server Monitoring
* Git Version Control
* GitHub Repository Management
* AWS EC2 Usage
* Automation Fundamentals

---

# Future Enhancements

Possible improvements:

* Disk Usage Alerts
* CPU Usage Alerts
* Memory Usage Alerts
* Automated Email Notifications
* Cron Job Scheduling
* Log File Monitoring
* HTML Report Generation
* CloudWatch Integration

---

# Resume Description

Developed a Linux Monitoring Toolkit using Bash scripting to automate system health checks including CPU utilization, memory usage, disk usage, uptime monitoring, and process analysis on AWS EC2 instances. Integrated the project with Git and GitHub for version control and collaboration.

