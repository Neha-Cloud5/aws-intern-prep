\# 🐱🌈 Nyancat on Amazon Linux 2023



This guide shows you how to install \*\*Nyancat\*\* from source on Amazon Linux 2023.

\*\*Nyancat\*\* is a fun terminal-based animation of the famous rainbow cat!



---



\## 📋 Prerequisites



\* You should have \*\*Amazon Linux 2023\*\* running (for example, on an EC2 instance).

\* You need \*\*sudo\*\* privileges to install packages and move files.



---



\## 🚀 Steps



\### 1️⃣ Install Required Tools



First, install the \*\*Development Tools\*\* group and required libraries.



```bash

sudo dnf groupinstall "Development Tools"

sudo dnf install git ncurses-devel

```



\*\*Explanation:\*\*



\* `sudo dnf groupinstall "Development Tools"`

&nbsp; Installs a collection of essential tools needed for compiling programs from source code.

&nbsp; This includes `gcc` (C compiler), `make`, `autoconf`, and other build tools.



\* `sudo dnf install git ncurses-devel`

&nbsp; Installs \*\*Git\*\* (to clone the source code) and \*\*ncurses-devel\*\*, which is a library for handling text-based interfaces in the terminal — required by Nyancat.



---



\### 2️⃣ Clone the Nyancat Repository



```bash

git clone https://github.com/klange/nyancat.git

cd nyancat

```



\*\*Explanation:\*\*



\* `git clone https://github.com/klange/nyancat.git`

&nbsp; Clones the official Nyancat source code repository to your local machine.



\* `cd nyancat`

&nbsp; Changes into the `nyancat` directory you just cloned.



---



\### 3️⃣ Build Nyancat



```bash

make

```



\*\*Explanation:\*\*



\* `make`

&nbsp; Runs the `Makefile` instructions to compile the source code and build the Nyancat program.



---



\### 4️⃣ Run Nyancat



```bash

./nyancat

```



\*\*Explanation:\*\*



\* `./nyancat`

&nbsp; Runs the compiled Nyancat executable in your terminal. Enjoy the rainbow cat!



---



\### 🧁 Bonus Tip: Run Nyancat from Anywhere



To make Nyancat available system-wide, move the compiled binary to `/usr/local/bin`:



```bash

sudo cp nyancat /usr/local/bin/

```



\*\*Explanation:\*\*



\* `sudo cp nyancat /usr/local/bin/`

&nbsp; Copies the `nyancat` program to `/usr/local/bin/`, which is included in your system `PATH`.

&nbsp; This lets you run `nyancat` from anywhere by simply typing `nyancat` in the terminal.



---



🎉 \*\*Done!\*\*



You now have Nyancat running on your Amazon Linux 2023 machine. Have fun!







