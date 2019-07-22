#!/bin/bash
# Copyright © 2016  Photes

restart_script(){
printf "${COLOR1}Menüye Dönmek İçin Bir Tuşa Basınız.\n${NC}"
read -n 1
clear
./phsinusbot_v1.sh
}

clear 
echo -e "\033[32m     ╔═══════════════════════════════════════════════════════════════╗" 
echo -e "\033[32m     ╠>      ~ CSAİLESİ.COM | SİNUSBOT / MUZİKBOT KURULUMU  ~        ║"
echo -e "\033[32m     ╠>      ~  BU SCRİPT \033[31mPHOTES\033[32m TARAFINDAN KODLANMIŞTIR  ~          ║"
echo -e "\033[32m     ╚═══════════════════════════════════════════════════════════════╝" 
echo -e "\033[33m     1)MuzikBotu Kur\e[0m" 
echo -e "\033[33m     2)MuzikBotu Sil\e[0m" 
echo -e "\033[33m     3)MuzikBotu Durdur\e[0m" 
echo -e "\033[33m     4)MuzikBotu Başlat\e[0m" 
echo -e "\033[35m     0)Çıkış Yap\e[0m" 
read secenek 
case $secenek in 
###################################################################################################### 
1) 
echo -e "\033[32m     =================================" 
echo -e "\033[32m           MuzikBot Kuruluyor..."  
echo -e "\033[32m     =================================" 
echo -e "\033[32m          Youtube-Dl Kuruluyor..."  
apt-get update
apt-get install x11vnc xinit xvfb libxcursor1 ca-certificates bzip2 curl libglib2.0-0 nano
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl >/dev/null 2>&1
schmod 777 /usr/local/bin/youtube-dl >/dev/null 2>&1
chmod 777 /opt/Sinusbot/youtube-dl >/dev/null 2>&1
echo -e "\033[32m     ===========================================" 
echo -e "\033[32m      MuzikBot İle İlgili Dosyalar İndiriliyor" 
cd /opt
mkdir Sinusbot
cd Sinusbot
wget https://www.sinusbot.com/pre/sinusbot-0.9.18-8499d2c.tar.bz2 >/dev/null 2>&1
tar -xjf sinusbot-0.9.18-8499d2c.tar.bz2
rm -r sinusbot-0.9.18-8499d2c.tar.bz2
cd /opt/Sinusbot
wget http://teamspeak.gameserver.gamed.de/ts3/releases/3.0.19.4/TeamSpeak3-Client-linux_amd64-3.0.19.4.run >/dev/null 2>&1
cd /opt/Sinusbot
chmod 777 TeamSpeak3-Client-linux_amd64-3.0.19.4.run
./TeamSpeak3-Client-linux_amd64-3.0.19.4.run
cp plugin/libsoundbot_plugin.so /opt/Sinusbot/TeamSpeak3-Client-linux_amd64/plugins
chmod 777 /opt/Sinusbot/TeamSpeak3-Client-linux_amd64/plugins/libsoundbot_plugin.so
chmod 777 /opt/Sinusbot/plugin/libsoundbot_plugin.so
chmod 777 /opt/Sinusbot/
cd /opt/Sinusbot
chmod 777 sinusbot
screen -dmS Sinusbot xinit /opt/Sinusbot/sinusbot -RunningAsRootIsEvilAndIKnowThat
echo -e "\033[36m     -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" 
echo -e "\033[36m           TS3 MuzikBot Kuruldu Bilgileriniz: İP-ADRESİNİZ:8087 / Kullanici adi:admin & Sifre:foobar" 
echo -e "\033[36m     -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" 
;; 
###################################################################################################### 
2) 
echo -e "\033[32m     ===================================" 
echo -e "\033[32m             MuzikBot Siliniyor" 
echo -e "\033[32m     ===================================" 
cd /opt
rm -r sinusbot-0.9.18-8499d2c.tar.bz2
rm -r Sinusbot
cd /root
echo -e "\033[36m     -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" 
echo -e "\033[36m               MuzikBot Başarıyla Silindi" 
echo -e "\033[36m     -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" 
   restart_script
;; 
###################################################################################################### 
3) 
echo -e "\033[32m     ====================================" 
echo -e "\033[32m            MuzikBot Durduruluyor" 
echo -e "\033[32m     ====================================" 
pkill -f /opt/Sinusbot/sinusbot
cd /root
sleep 0.1
echo -e "\033[36m     -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" 
echo -e "\033[36m             MuzikBot Başarıyla Durduruldu" 
echo -e "\033[36m     -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" 
   restart_script
;; 
###################################################################################################### 
4) 
echo -e "\033[32m     ====================================" 
echo -e "\033[32m            MuzikBot Başlatılıyor" 
echo -e "\033[32m     ====================================" 
cd /opt/Sinusbot
screen -dmS Sinusbot xinit /opt/Sinusbot/ts3bot -RunningAsRootIsEvilAndIKnowThat
cd /root
sleep 0.1
echo -e "\033[36m     -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" 
echo -e "\033[36m              MuzikBot Başarıyla Başlatıldı" 
echo -e "\033[36m     -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -" 
;; 
###################################################################################################### 
0) 
echo -e "\033[33m     ============================" 
echo -e "\033[33m            Cikis Basarili" 
echo -e "\033[33m     ============================" 
;; 
###################################################################################################### 
*) 
clear 
echo -e "\033[32m Yanlis Secenek Panel Yeniden Baslatiliyor.\e[0m" 
./phsinusbot_v1.sh
esac 
######################################################################################################  
