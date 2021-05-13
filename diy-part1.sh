#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#!/bin/bash

if [ ! -d "./package/myapp" ];then
mkdir ./package/myapp
fi
cd ./package/myapp

echo "openwrt-passwall"
if [ ! -d "./openwrt-passwall" ];then
git clone https://github.com/xiaorouji/openwrt-passwall.git
else
cd openwrt-passwall
git pull
cd ..
fi

echo "luci-theme-atmaterial"
if [ ! -d "./luci-theme-atmaterial" ];then
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git
else
cd luci-theme-atmaterial
git pull
cd ..
fi

#echo "luci-app-ssr-plus"
#if [ ! -d "./luci-app-ssr-plus" ];then
#git clone https://github.com/ipconfig25/luci-app-ssr-plus.git
#else
#cd luci-app-ssr-plus
#git pull

#cd ..
#fi

#echo "luci-app-openclash"
#if [ ! -d "./OpenClash" ];then
#mkdir ./OpenClash
#cd ./OpenClash
#git init
#git remote add -f origin https://github.com/vernesong/OpenClash.git
#git config core.sparsecheckout true
#echo "luci-app-openclash" >> .git/info/sparse-checkout
#git pull origin master
#git branch --set-upstream-to=origin/master master
#cd ..
#else
#cd ./OpenClash/luci-app-openclash
#git pull origin master
#cd ..
#cd ..
#fi

#echo "koolproxyR"
#if [ ! -d "./koolproxyR" ];then
#git clone https://github.com/ipconfig25/koolproxyR.git
#else
#cd koolproxyR
#git pull
#cd ..
#fi

#echo "luci-app-adguardhome"
#if [ ! -d "./luci-app-adguardhome" ];then
#git clone https://github.com/rufengsuixing/luci-app-adguardhome.git
#else
#cd luci-app-adguardhome
#git pull
#cd ..
#fi
