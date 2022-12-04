cd ~
# Update package
apt update
apt install git

#Install python
apt install python3
apt install python3-pip
#Install my script
git clone https://github.com/ks-official-Sahan/KS-v2
cd KS-v2
chmod +x *
pip3 install -r requirements.txt

python3 env_vars.py

cp bot.py /usr/bin/
cp bot.service /lib/systemd/system/
sudo systemctl enable bot.service
sudo systemctl start bot.service
bash v2ray.sh
cp server_manager.py /root/
echo python3 /root/server_manager.py >> /root/.bashrc
echo sudo systemctl start bot.service >> /root/.bashrc
reboot

