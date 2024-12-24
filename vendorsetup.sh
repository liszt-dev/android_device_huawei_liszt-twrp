#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Apply ROM patches
THISDIR=$PWD
cd ${THISDIR}/device/huawei/liszt/patches
./install.sh
cd ${THISDIR}

# Add lunch combo options
add_lunch_combo omni_liszt-userdebug
