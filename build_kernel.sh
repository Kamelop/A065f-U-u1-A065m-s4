#!/bin/bash

cd kernel
python kernel_device_modules-6.6/scripts/gen_build_config.py --kernel-defconfig mediatek-bazel_defconfig --kernel-defconfig-overlays "mt6768_overlay.config o8.config" --kernel-build-config-overlays "" -m user -o ../out/target/product/a06/obj/KERNEL_OBJ/build.config

export DEVICE_MODULES_DIR="kernel_device_modules-6.6"
export BUILD_CONFIG="../out/target/product/a06/obj/KERNEL_OBJ/build.config"
export OUT_DIR="../out/target/product/a06/obj/KLEAF_OBJ"
export DIST_DIR="../out/target/product/a06/obj/KLEAF_OBJ/dist"
export DEFCONFIG_OVERLAYS="mt6768_overlay.config o8.config"
export PROJECT="mgk_64_k66"
export MODE="user"

./kernel_device_modules-6.6/build.sh
