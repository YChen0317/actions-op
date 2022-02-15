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
sed -i 's/192.168.1.1/10.0.0.6/g' package/base-files/files/bin/config_generate
#password
ZZZ="package/lean/default-settings/files/zzz-default-settings"
sed -i '/CYXluq4wUazHjmCDBCqXF/d' $ZZZ
#qianming
sed -i "s/OpenWrt /Pisces compiled in $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" $ZZZ
rm -rf package/lean/luci-theme-argon
