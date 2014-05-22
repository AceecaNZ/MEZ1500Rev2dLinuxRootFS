#!/bin/sh

HOST=192.168.1.123
USER=root
PASS=mzdev

echo "Uploading kernel to device..."

lftp -u ${USER},${PASS} sftp://${HOST} <<EOF
cd boot
put ../kernel-bin/arch/arm/boot/uImage
bye
EOF

echo "done"

