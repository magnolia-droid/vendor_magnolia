#
# Copyright (C) 2024-2026 MagnoliaDroid Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#

# Inherit MagnoliaDroid specific product configurations
PRODUCT_PACKAGES += \
    SmartDock \
    PixelLauncherRelease \
    MagiskPrebuilt

# Enable Android Freeform Multi-Window & Desktop Mode
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.freeform_window=true \
    persist.waydroid.multi_windows=true \
    ro.config.desktop_mode=true

# Device specifics for libndk ARM translation
PRODUCT_COPY_FILES += \
    vendor/magnolia/scripts/init.magnolia.rc:$(TARGET_COPY_OUT_SYSTEM)/etc/init/init.magnolia.rc
