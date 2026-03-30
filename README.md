# oss-audit-24BCE11427
Five useful Bash shell scripts for system administration are included with an extensive Open Source Audit of the Linux Kernel that examines its history, GPL v2 licensing, and ecosystem

#  The Open Source Audit: Linux Kernel

**Course:** Open Source Software (OSS NGMC) - Capstone Project  
**Student Name:** Tejas Dnyanehswar Thate  
**Roll Number:** 24BCE11427  
**Software Chosen:** The Linux Kernel  

---

##  Project Overview
This is my entire Capstone Project code repository for the Open Source Software course. This is my audit of the **Linux Kernel**, tracing its evolution from Linus Torvalds' personal project in 1991 to the foundation of the modern tech landscape.

The project is divided equally into two sections:
**The Comprehensive Written Audit (`OSSCapstoneProject_Report.pdf`)** and **Practical Shell Scripting Automation (5 `.sh` scripts)**.

###  Audit Scope (Inside the PDF Report)
**Part A (Origin & Philosophy):** This section includes the problem the Linux Kernel was created to solve (the absence of a free, open-source Unix-like operating system), the breakdown of the **GPLv2 License**, and the ethics of capitalizing open-source labor.
**Part B (Linux Footprint):** This section includes the installation footprint of the Linux Kernel (`/boot`, `/lib/modules`), user permissions (execution by the root user), and package management using `apt` and `dpkg`.
**Part C (The FOSS Ecosystem):** This section includes the dependencies required to build the Linux Kernel (GCC, GLIBC, GNU Make) and the projects the Linux Kernel has enabled (Android, Docker, Cloud Infrastructure).
**Part D (Proprietary Comparison):** This section includes the critical comparison between the open-source Linux Kernel and the proprietary Windows Server ecosystem.

---

## Repository Structure
```text
📦 OSS-Capstone-Linux-Audit
 ┣ 📜 OSSCapstoneProject_Report.pdf     # The final 12-16 page written audit
 ┣ 📜 script1.sh                        # System Identity Report
 ┣ 📜 script2.sh                        # FOSS Package Inspector
 ┣ 📜 script3.sh                        # Disk and Permission Auditor
 ┣ 📜 script4.sh                        # Log File Analyzer
 ┣ 📜 script5.sh                        # Open Source Manifesto Generator
 ┗ 📜 README.md                         # Project documentation (You are here)
```
### The Shell Script Deep-Dive demonstration consists of five Bash shell scripts which show essential command-line system management functions along with automated tasks and system security checks on Debian/Ubuntu operating systems.

 Script 1: System Identity Report (script1.sh) The system identity report script functions as a welcome display which automatically retrieves and presents essential system details about the operating system distribution and kernel version and active user and system uptime.

Key Shell Concepts Used: The system uses variables and command substitution through the syntax $() and echo command output and system commands which include uname -r and whoami and uptime and date for its operation.

Script 2: FOSS Package Inspector (script2.sh) The system package management tool checks for present Linux Kernel header files through the core Linux Kernel header package linux-libc-dev and provides their version and architecture details together with a philosophical overview of the system.

Key Shell Concepts Used: The system implements if-then-else conditionals and case statements for logic branching and package management querying through dpkg -s and output piping through grep.

Script 3: Disk and Permission Auditor (script3.sh) The system audits essential system directories which include /etc and /var/log and /boot to determine their complete disk space consumption and file ownership and file access rights.

Key Shell Concepts Used: The system processes arrays through array iteration and for loops while checking directory existence with the -d parameter and performing advanced text processing through awk and cut.

Script 4: Log File Analyzer (script4.sh) The system examines its primary log file /var/log/syslog by reading each line to count how many times a particular keyword appears with the default keyword being warning while showing the five latest matches.

Key Shell Concepts Used: The system uses while-read loops to process data and matches patterns through conditional grep matching while it uses mathematical counter variables through $((COUNT + 1)) and command-line arguments through $1 and $2 and tail.

Script 5: Open Source Manifesto Generator (script5.sh) The script provides an interactive interface which asks users to respond to questions.

###  Environment & Dependencies
->These scripts were written, tested, and verified in the following environment:

->OS Environment: Ubuntu / Debian (Native, VM, or WSL2)

Shell: GNU Bash

->Required Packages: linux-libc-dev (required for Script 2 to return a 'SUCCESS' state).
BASH :
sudo apt update && sudo apt install linux-libc-dev

->Permissions: Script 4 requires sudo (root) privileges to securely read from /var/log/syslog.

###  How to Execute the Scripts

1. Clone the repository:-
BASH :
```text
git clone <PASTE_YOUR_GITHUB_REPO_URL_HERE>
cd <YOUR_REPO_FOLDER_NAME>
```
2. Grant execution permissions to all scripts:-
BASH:
```text
chmod +x script*.sh
```

3. Run the scripts:-
BASH:
```text
./script1.sh
./script2.sh
./script3.sh
sudo ./script4.sh  # Requires sudo for log access
./script5.sh
```



























































 
