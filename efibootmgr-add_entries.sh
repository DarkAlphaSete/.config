#!/bin/bash


efibootmgr --disk /dev/sda --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux-lts --unicode 'root=/dev/sda2 rw initrd=\intel-ucode.img initrd=\initramfs-linux-lts.img resume=/dev/sda5'

efibootmgr --disk /dev/sda --part 1 --create --label "Arch Linux (Fallback)" --loader /vmlinuz-linux-lts --unicode 'root=/dev/sda2 rw initrd=\intel-ucode.img initrd=\initramfs-linux-lts-fallback.img resume=/dev/sda5'

