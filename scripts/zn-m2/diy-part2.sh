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

## 替换为passwall官方源
#git clone https://github.com/xiaorouji/openwrt-passwall.git
#git -C openwrt-passwall checkout 4.70-1
#for packagepath in openwrt-passwall/*; do package=`basename "$packagepath"`; rm -rf "feeds/packages/net/${package}" ; cp -rf "openwrt-passwall/${package}" "feeds/packages/net/${package}"; done
#
#git -C openwrt-passwall checkout 0b123275686023c34a1a44344c0a4d8f08ef360c
#rm -rf feeds/luci/applications/luci-app-passwall
#cp -rf openwrt-passwall/luci-app-passwall feeds/luci/applications/luci-app-passwall

./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a -f -p passwall_luci