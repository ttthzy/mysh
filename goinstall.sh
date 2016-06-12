#! /bin/bash

# Shell script goinstall.sh
# Email:ttthzy@gmail.com
# Aming 2016-06-12

# 附加必须的依赖
apt-get update && apt-get install -yq git wget gcc
rm -rf /var/cache/apt/archives /var/cache/apt/archives/partial

# 下载源码包
wget -q http://www.golangtc.com/static/go/1.6.2/go1.6.2.linux-amd64.tar.gz

# 解压缩
tar -xf go1.6.2.linux-amd64.tar.gz -C /usr/local
rm go1.6.2.linux-amd64.tar.gz

# 设置环境变量
echo 'export GOPATH=/gopath' >> /etc/profile
echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> /etc/profile
echo 'export GOROOT=/usr/local/go' >> /etc/profile

echo 'export GOPATH=/gopath' >> /root/.bash_profile
echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> /root/.bash_profile
echo 'export GOROOT=/usr/local/go' >> /root/.bash_profile
