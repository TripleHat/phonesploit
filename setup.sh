#!/bin/bash
# Coded by TripleHat
# setup.sh 
clear
cd $HOME
start() {
echo -e "\e[1;92m [~]Installing phonesploit\e[0m"
sleep 1
if [[ -f ".termuxAdb" ]]; then
cd .termuxAdb; rm -rf /*
wget https://github.com/TripleHat/phonesploit/raw/main/phonesploit -q
chmod +x phonesploit; mv phonesploit /data/data/com.termux/files/usr/bin
cd $HOME; rm -rf .termuxAdb
else
mkdir .termuxAdb; cd .termuxAdb
wget https://github.com/TripleHat/phonesploit/raw/main/phonesploit -q
chmod +x phonesploit; mv phonesploit /data/data/com.termux/files/usr/bin
cd $HOME; rm -rf .termuxAdb
fi
if [[ $(command -v phonesploit) == " " ]]; then
echo -e "\e[1;91m [×]Failed To install\e[0m"
exit 0
else
echo -e "\e[1;92m [√]PhoneSploit successfully installed!\e[0m"
echo -e "\e[1;96m [•]Use\e[1;92m phonesploit\e[0m\e[1;96m To start tool\e[0m"
exit 0
fi
}

if [[ -f /data/data/com.termux/files/usr/bin/phonesploit ]]; then
rm -rf data/data/com.termux/files/usr/bin/phonesploit
start
else
start
fi
