clear
cd $HOME
if -e -d ".termuxAdb"; then
cd .termuxAdb; rm -rf /*
wget https://github.com/TripleHat/phonesploit/raw/main/phonesploit -q
chmod +x phonesploit; mv phonesploit /data/data/com.termux/files/usr/bin
else
mkdir .termuxAdb; cd .termuxAdb
wget https://github.com/TripleHat/phonesploit/raw/main/phonesploit -q
chmod +x phonesploit; mv phonesploit /data/data/com.termux/files/usr/bin
fi
if [ -e "PhoneSploit" ]; then
rm -rf PhoneSploit.zip
else
if [ -e "PhoneSploit.zip" ]; then
unzip PhoneSploit.zip
else
echo "make sure you have installed wget"
fi
fi
cd PhoneSploit
chmod +x termux.sh
bash termux.sh
