

This script helps configure a basic firewall using \*\*UFW (Uncomplicated Firewall)\*\* on an Ubuntu system. It demonstrates how to secure your system by \*\*denying incoming SSH connections (port 22)\*\*, while allowing outgoing internet traffic.



> ⚠️ \*\*Important:\*\* Do NOT run this on a cloud instance like AWS EC2 or any remote server unless you have console access or alternate login methods configured. Denying SSH will lock you out.



---



\## 🛠️ What the Script Does



1\. \*\*Checks if UFW is installed\*\*

2\. \*\*Sets default policies\*\*:

&nbsp;  - Deny all incoming connections

&nbsp;  - Allow all outgoing connections

3\. \*\*Denies SSH (port 22)\*\*

4\. \*\*Enables the UFW firewall\*\*



---



\## 🔧 How to Use



\### 1. Make the script executable

```bash

chmod +x firewall.sh



