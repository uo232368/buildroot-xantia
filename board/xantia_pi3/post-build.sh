#!/bin/sh

set -u
set -e

# Add a console on tty1
if [ -e ${TARGET_DIR}/etc/inittab ]; then
    grep -qE '^tty1::' ${TARGET_DIR}/etc/inittab || \
	sed -i '/GENERIC_SERIAL/a\
tty1::respawn:/sbin/getty -L  tty1 0 vt100 # HDMI console' ${TARGET_DIR}/etc/inittab
fi

#Mover ficheros de configuracion de Wifi y SSH

cp board/xantia_pi3/files/interfaces ${TARGET_DIR}/etc/network/
cp board/xantia_pi3/files/sshd_config ${TARGET_DIR}/etc/ssh/
cp board/xantia_pi3/files/wpa_supplicant.conf ${TARGET_DIR}/etc/
cp board/xantia_pi3/files/S21PPN ${TARGET_DIR}/etc/init.d

mkdir -p ${TARGET_DIR}/opt/Qtest2/bin/
cp board/xantia_pi3/files/Qtest2 ${TARGET_DIR}/opt/Qtest2/bin/

#rm -f ${TARGET_DIR}/etc/init.d/S40network
rm -f ${TARGET_DIR}/etc/init.d/S50postgresql 


