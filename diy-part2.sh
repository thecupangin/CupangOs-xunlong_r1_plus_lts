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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# change ssid
sed -i "s/OpenWrt/CupangOs/g" package/kernel/mac80211/files/lib/wifi/mac80211.sh
sed -i "s/disabled=1/disabled=0/g" package/kernel/mac80211/files/lib/wifi/mac80211.sh

# change hostname
sed -i "s/OpenWrt/CupangOs/g" package/base-files/files/bin/config_generate

# change timezone
sed -i "s/UTC/WIB-7/g" package/base-files/files/bin/config_generate

# change banner
rm -rf ./package/base-files/files/etc/banner
svn export https://github.com/thecupangin/CupangOs-LEDE/trunk/amlogic-s9xxx/common-files/files/etc/banner package/base-files/files/etc/banner

svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
