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

#1. Modify default IP
sed -i 's/192.168.1.1/192.168.102.252/g' package/base-files/files/bin/config_generate

#2. Replace with JerryKuKu’s Argon
#rm -rf luci-theme-argone
#git clone https://github.com/kenzok78/luci-theme-argone
sed -i 's/luci-theme-bootstrap/luci-theme-argone/' feeds/luci/collections/luci/Makefile

