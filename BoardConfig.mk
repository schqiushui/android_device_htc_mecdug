#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# Inherit from common e8-common
-include device/htc/e8-common/BoardConfigCommon.mk

# Model Ids (Dual SIM variants)
# 0PAJ20000 - Dual SIM variant (Chinese version)
# 0PAJ21000 - Dual SIM variant (European version)
# 0PAJ22000 - Dual SIM variant (Taiwan version)

# Assert
TARGET_OTA_ASSERT_DEVICE := htc_mecdug,mecdugl

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := device/htc/mecdug/mkbootimg.mk
TARGET_KERNEL_CONFIG := cm_mecdug_defconfig

# Audio
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_HTC_DUAL_SIM := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/mecdug/bluetooth

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3087007744
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11140071424

# Inherit from the proprietary version
-include vendor/htc/mecdug/BoardConfigVendor.mk
