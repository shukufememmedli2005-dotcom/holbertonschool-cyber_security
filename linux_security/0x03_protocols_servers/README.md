# Network Security: Protocols and Servers

This project focuses on Network Reconnaissance and Enumeration. It involves identifying and interacting with common network services and protocols to understand their functionality, security implications, and how to query them using standard Linux tools like `nmap` and standard protocol clients.

## 📖 Learning Objectives
By the end of this project, you should be able to explain:

* **File Sharing Protocols:**
    * **NFS (Network File System):** Purpose and usage in Linux/Unix environments.
    * **SMB (Server Message Block):** How it enables cross-platform file sharing (Windows/Linux).

* **Communication & Management:**
    * **SMTP (Simple Mail Transfer Protocol):** The mechanism of sending emails.
    * **SNMP (Simple Network Management Protocol):** Monitoring network devices and the information it exposes.

* **Remote Access:**
    * **SSH (Secure Shell):** Benefits of encrypted remote access over legacy protocols (Telnet).
    * **RDP (Remote Desktop Protocol):** Risks associated with graphical remote access.

* **Security Concepts:**
    * **Port Numbers:** Their role in directing traffic to correct services.
    * **Encryption:** The difference between cleartext protocols (HTTP, FTP) and secure counterparts (HTTPS, SFTP).
    * **Patching:** The importance of keeping protocol implementations up-to-date.

## 🛠 Requirements
* **Environment:** Kali Linux 2023.2
* **Scripting:**
    * All files must be exactly **2 lines long**.
    * Line 1: `#!/bin/bash`
    * Line 2: The command using `$1` as the target argument.
* **Style:** Betty style.
