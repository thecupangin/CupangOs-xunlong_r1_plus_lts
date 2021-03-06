#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.2.1/10.10.10.1/g' package/base-files/files/bin/config_generate

#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# change ssid
#sed -i "s/OpenWrt/CupangOs/g" package/kernel/mac80211/files/lib/wifi/mac80211.sh
#sed -i "s/disabled=1/disabled=0/g" package/kernel/mac80211/files/lib/wifi/mac80211.sh

# change hostname
sed -i "s/OpenWrt/CupangOs/g" package/base-files/files/bin/config_generate

# change timezone
#sed -i "s/UTC/Asia\/Jakarta/g" package/base-files/files/bin/config_generate
#sed -i -e "s/CST-8/WIB-7/g" -e "s/Shanghai/Jakarta/g" package/default-settings/files/zzz-default-settings

# change banner
rm -rf ./package/base-files/files/etc/banner
svn export https://github.com/thecupangin/CupangOs-LEDE/trunk/amlogic-s9xxx/common-files/files/etc/banner package/base-files/files/etc/banner

# Add kiddin9 packages
git clone https://github.com/kiddin9/openwrt-packages.git

# Add luci-theme-argon
#git clone https://github.com/jerrykuku/luci-theme-argon.git
#git clone https://github.com/jerrykuku/luci-app-argon-config.git

# Add luci-app-amlogic
#svn co https://github.com/ophub/luci-app-amlogic/trunk package/luci-app-amlogic

