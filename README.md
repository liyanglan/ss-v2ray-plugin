### 介绍

1、安装[shadowsocks-libev](https://github.com/shadowsocks/shadowsocks-libev) 和 [v2ray-plugin](https://github.com/shadowsocks/v2ray-plugin).  
2、从[Let’s Encrypt](https://letsencrypt.org)获取证书，用以启用shadowsocks上的websocket（HTTPS）。

3、端口默认443，不要修改。

您必须通过v2ray插件和通过443端口使用shadowsocks，甚至可以像[Cloudflare](https://www.cloudflare.com/)一样在CDN后面运行您的shadowsocks服务器。

### 要求

准备好VPS、域名

然后解析好域名


### 一键安装
```bash
# 安装
## CentOS 7
wget -O centos7-ss-install.sh https://git.io/JeiRt
chmod +x centos7-ss-install.sh
./centos7-ss-install.sh

## Ubuntu 18.04/16.04 或 Debian 9
wget -O ubuntu-ss-install.sh https://git.io/JeiRq
chmod +x ubuntu-ss-install.sh
./ubuntu-ss-install.sh

# 使用systemctl管理shadowsocks
systemctl status shadowsocks
systemctl start shadowsocks
systemctl stop shadowsocks
```
### 注意
在CentOS 7，Ubuntu 18.04 / 16.04和Debian 9上进行了测试。

# Windows客户端使用：

### [shadowsocks-windows客户端下载](https://github.com/shadowsocks/shadowsocks-windows/releases)

### [v2ray-plugin下载](https://github.com/shadowsocks/v2ray-plugin/releases)，下载完成后和shadowsocks-windows客户端放在同一个目录，并且改名为v2ray-plugin。


***正在施工。***

