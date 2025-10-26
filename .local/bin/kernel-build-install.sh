#!/bin/sh

# Run this script as the superuser.

# This script is meant for Arch Linux, please modify to your systems needs, also this script is POSIX complient so no need for bash.

# To see how fast the kernel compiles run this script with the prefix time.

# Welcome message.
echo "Welcome, to the linux kernal compile script.\n"

# Make (can specify threads instead of nproc).
make -s -j$(( $(nproc) * 2 )) march=x86_64 

# Make kernel modules.
make modules

# Install kernel modules.
make modules_install

# Make compressed bzimage of kernel.
make bzimage

# Copies the kernel into the /boot directory.
cp -v arch/x86/boot/bzImage /boot/vmlinuz-linux-based

# Create initramfs image.
mkinitcpio -k linux-based -g /boot/initramfs-linux-based.img

# Copy the System.map file.
cp /boot/System.map /boot/System.map-linux-based
ln -sf /boot/System.map-linux-based /boot/System.map

# Make the grub config
grub-mkconfig -o /boot/grub/grub.cfg

# End of compile message.
echo "\nCompile and install completed."
