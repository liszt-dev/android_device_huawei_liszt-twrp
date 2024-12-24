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

# Clone goldfish repository
if [ ! -d "device/generic/goldfish" ]; then
    git clone https://github.com/liszt-dev/android_device_generic_goldfish -b cm-14.1 device/generic/goldfish
else
    echo "Detected 'device/generic/goldfish' - Skipping..."
fi

# Add lunch combo options
add_lunch_combo omni_liszt-userdebug
