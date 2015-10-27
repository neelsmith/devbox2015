#!/usr/bin/env bash


#
# Repository for an early-21st-century version of gradle:
add-apt-repository ppa:cwchien/gradle
apt-get update



# version control
apt-get install -y git




# JDK bundle
#apt-get install -y openjdk-7-jdk
#apt-get -y install groovy
#apt-get -y install gradle




# System settings: default to US Eastern time for seminar:
timedatectl set-timezone America/New_York

# Set up vagrant user account:
cp /vagrant/system/dotprofile /home/vagrant/.profile
chown vagrant:vagrant /home/vagrant/.profile
if [ ! -e "/home/vagrant/Desktop/shared" ]; then
    ln -s /vagrant /home/vagrant/Desktop/shared
fi

# Remove unneeded apps from base machine:
apt-get -y remove transmission
apt-get -y remove sylpheed
apt-get -y remove mtpaint
apt-get -y remove simple-scan
apt-get -y remove audacious
apt-get -y remove guvcview
apt-get -y remove gnome-mplayer
apt-get -y remove xfburn
apt-get -y remove abiword
apt-get -y remove gnumeric
apt-get -y remove pidgin
apt-get -y remove transmission-gtk


# Add Atom:
echo "Downloading .deb file for Atom"
/usr/bin/wget https://github.com/atom/atom/releases/download/v1.0.11/atom-amd64.deb 2> /tmp/atom-log.txt
echo "Download complete, installing Atom"
/usr/bin/dpkg --install atom-amd64.deb
echo "Atom installed. "

# Did the following:
# apt-get -f install
# apt-get install python3.4-venv
