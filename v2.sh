#!/bin/sh

# Check system
if [ ! -f /etc/lsb-release ];then
    if ! grep -Eqi "ubuntu|debian" /etc/issue;then
        echo "\033[1;31mOnly Ubuntu or Debian can run this shell.\033[0m"
        exit 1
    fi
fi

# Make sure only root can run our script
[ `whoami` != "root" ] && echo "\033[1;31mThis script must be run as root.\033[0m" && exit 1

# Version
v2_file=0
get_latest_ver(){
    v2_file=$(wget -qO- https://api.github.com/repos/shadowsocks/v2ray-plugin/releases/latest | grep linux-amd64 | grep name | cut -f4 -d\")
}

# Installation of v2ray-plugin
install_v2(){
    if [ -f /usr/local/bin/v2ray-plugin ];then
        echo "\033[1;32mv2ray-plugin already installed, skip.\033[0m"
    else
        if [ ! -f $v2_file ];then
            v2_url=$(wget -qO- https://api.github.com/repos/shadowsocks/v2ray-plugin/releases/latest | grep linux-amd64 | grep browser_download_url | cut -f4 -d\")
            wget $v2_url
        fi
        tar xf $v2_file
        mv v2ray-plugin_linux_amd64 /usr/local/bin/v2ray-plugin
        if [ ! -f /usr/local/bin/v2ray-plugin ];then
            echo "\033[1;31mFailed to install v2ray-plugin.\033[0m"
            exit 1
        fi
    fi
}


get_latest_ver
install_v2
