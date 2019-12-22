#!/bin/bash

efibootmgr --disk /dev/sda --part 1 --create --label "Arch Linux" --loader /vmlinuz-linux --unicode 'root=/dev/sda2 rw initrd=\intel-ucode.img initrd=\initramfs-linux.img resume=/dev/sda3'

efibootmgr --disk /dev/sda --part 1 --create --label "Arch Linux (Fallback)" --loader /vmlinuz-linux --unicode 'root=/dev/sda2 rw initrd=\intel-ucode.img initrd=\initramfs-linux-fallback.img resume=/dev/sda3'

