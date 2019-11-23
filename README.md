＃＃＃ 介绍

安装[shadowsocks-libev](https://github.com/shadowsocks/shadowsocks-libev) and [v2ray-plugin](https://github.com/shadowsocks/v2ray-plugin).  
从[Let’s Encrypt]（https://letsencrypt.org）获取证书，以启用shadowsocks上的websocket（HTTPS）。

您必须通过v2ray插件和通过443端口使用shadowsocks，甚至可以像[Cloudflare]（https://www.cloudflare.com/）一样在CDN后面运行您的shadowsocks服务器。

###要求

VPS


###用法
``
＃安装
## CentOS 7
wget -O centos7-ss-install.sh https://github.com/M3chD09/shadowsocks-with-v2ray-plugin-install/raw/master/centos7-ss-install.sh
chmod +x centos7-ss-install.sh
./centos7-ss-install.sh

## Ubuntu 18.04 / 16.04或Debian 9
wget -O ubuntu-ss-install.sh https://github.com/M3chD09/shadowsocks-with-v2ray-plugin-install/raw/master/ubuntu-ss-install.sh
chmod +x ubuntu-ss-install.sh
./ubuntu-ss-install.sh

＃使用systemctl管理shadowsocks
systemctl status shadowsocks
systemctl start shadowsocks
systemctl stop shadowsocks
```
＃＃＃ 注意
在CentOS 7，Ubuntu 18.04 / 16.04和Debian 9上进行了测试。
***正在施工。***
