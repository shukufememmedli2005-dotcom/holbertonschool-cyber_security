# Cybersecurity - Active Reconnaissance

Active Reconnaissance is a crucial phase in the cybersecurity lifecycle where a researcher or attacker interacts directly with the target system to gather detailed information. This project focuses on utilizing network tools and scripts to identify open ports, running services, operating systems, and potential vulnerabilities within a specific target environment.



## 📝 Background Context

In this project, the focus is on the target machine: **cyber_netsec_0x02**. Unlike passive reconnaissance, the actions performed here will be logged by the target system. Understanding how to use these tools effectively and discreetly is a key skill for any cybersecurity professional.

---

## 📚 Resources

**Read or watch:**

* [What is a ping?](https://www.cloudflare.com/learning/ddos/glossary/ping-icmp/)
* [What does Traceroute Do?](https://www.fortinet.com/resources/cyberglossary/traceroute)
* [Top 8 Nmap Commands](https://www.comptia.org/blog/nmap-commands)
* [How Hackers Use Reconnaissance?](https://www.crowdstrike.com/cybersecurity-101/observability/reconnaissance/)
* [SQLMap Cheat Sheet](https://www.stationx.net/sqlmap-cheat-sheet/)

**References & Tools:**
* `ping` / `traceroute`
* `telnet` / `netcat`
* [Wappalyzer](https://www.wappalyzer.com/)
* [Nmap (Network Mapper)](https://nmap.org/)

---

## 🎯 Learning Objectives

By the end of this project, you should be able to explain the following concepts clearly without external help:

### Core Concepts
* What is **active reconnaissance**?
* Why is active reconnaissance vital for cybersecurity posture and penetration testing?
* What is **DNS enumeration** and why is it performed?
* What is **sqlmap** and how is it used to detect SQL injection vulnerabilities?

### Practical Skills
* How to use **Wappalyzer** to identify technologies used on a web server.
* How to enumerate **SMTP** services using command-line tools.
* How to perform **OS fingerprinting** to identify the target's operating system.



---

## ⚙️ Requirements

### General
* **Allowed editors:** `vi`, `vim`, `emacs`.
* **Environment:** All scripts will be tested on **Kali Linux**.
* **Target:** All tasks focus on the target machine `cyber_netsec_0x02`.
* **README:** A `README.md` file at the root of the project is mandatory.

### Script Constraints
* **Length:** All scripts must be **exactly one line long**.
* **Validation:** `$ wc -l [file]` must return `1`.
* **File Ending:** All files must end with a new line.

---

## 🛠️ Toolset Overview

| Tool | Usage in Active Recon |
| --- | --- |
| **Ping** | Checking host reachability and latency. |
| **Traceroute** | Mapping the path packets take to reach a host. |
| **Nmap** | Port scanning, service detection, and OS fingerprinting. |
| **Netcat** | Reading from and writing to network connections (the "Swiss Army Knife"). |
| **SQLMap** | Automating the detection and exploitation of SQL injection flaws. |



---

## 📋 Repository Information
* **GitHub repository:** `holbertonschool-cybersecurity`
* **Directory:** `active_reconnaissance`