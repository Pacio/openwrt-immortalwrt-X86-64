#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.

sed -i '1i src-git immpackage https://github.com/tudaole/OpenWrt-ImmortalWrt-Packages' feeds.conf.default
./scripts/feeds update -a && rm -rf feeds/luci/applications/luci-app-mosdns && rm -rf feeds/luci/applications/luci-app-passwall && rm -rf feeds/luci/applications/luci-app-smartdns
rm -rf feeds/packages/net/{alist,adguardhome,mosdns,xray*,v2ray*,v2ray*,sing*,smartdns}
rm -rf feeds/packages/utils/v2dat
