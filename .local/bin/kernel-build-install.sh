#!/bin/sh

# THIS SCRIPT iS VERY EXPERIMENTAL DO NOT RUN ON A DAILY DRIVER.

# Run this script as the superuser.

# This script is intended for Debian Linux, please modify to your systems needs, also this script is POSIX complient so no need for bash.

# Run from the build dir

# To see how fast the kernel compiles and installs, run this script with the prefix time.

### Add whoami to check if root user.
whoami

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
cp -vf arch/x86/boot/bzImage /boot/vmlinuz-linux-based$(uname -r)

# Create initramfs image.
mkinitcpio -k linux-based -g /boot/initramfs-linux-based$(uname -r).img

# Copy the System.map file.
cp -vf System.map /boot/System-linux-based$(uname -r).map


# Make the grub config.
# grub-mkconfig -o /boot/grub/grub.cfg
update-grub

# End of compile message.
echo "\nCompile and install completed."
