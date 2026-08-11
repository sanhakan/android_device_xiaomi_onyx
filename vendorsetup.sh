echo 'Starting to clone stuffs needed to build for onyx'

# Kernel Stuff
echo 'Cloning Kernel Stuff'
rm -rf kernel/xiaomi/sm8735 && git clone https://github.com/crdroidandroid/android_kernel_xiaomi_sm8735 -b 16.0 kernel/xiaomi/sm8735
rm -rf kernel/xiaomi/sm8735-modules && git clone https://github.com/crdroidandroid/android_kernel_xiaomi_sm8735-modules.git -b 16.0 kernel/xiaomi/sm8735-modules
rm -rf kernel/xiaomi/sm8735-devicetrees && git clone https://github.com/crdroidandroid/android_kernel_xiaomi_sm8735-devicetrees.git -b 16.0 kernel/xiaomi/sm8735-devicetrees

# Camera Stuff
echo 'Cloning Camera Stuff'
rm -rf device/xiaomi/onyx-miuicamera && git clone https://gitlab.com/crdroidandroid/android_device_xiaomi_miuicamera.git -b 16.0-onyx device/xiaomi/onyx-miuicamera
rm -rf vendor/xiaomi/onyx-miuicamera && git clone https://gitlab.com/crdroidandroid/proprietary_vendor_xiaomi_miuicamera.git -b 16.0-onyx vendor/xiaomi/onyx-miuicamera
echo 'Cloning process is completed, now its time for lunch'

# Signig Stuff
git clone https://github.com/Lafactorial/vendor_lineage-priv_keys -b main vendor/lineage-priv/keys
cd vendor/lineage-priv/keys
./keys.sh
cd ../../../
