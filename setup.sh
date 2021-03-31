clear
cd $HOME
mkdir PhoneSploit; cd PhoneSploit
wget https://github.com/TripleHat/phonesploit/raw/main/PhoneSploit.zip
unzip PhoneSploit.zip
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
