#!/bin/bash

if id "$FTP_USER" &>/dev/null; then
    echo "L'utilisateur $FTP_USER existe déjà."
else
    useradd -m -s /bin/bash "$FTP_USER"
    echo "$FTP_USER:$FTP_PASSWORD" | chpasswd
fi

/usr/sbin/vsftpd /etc/vsftpd.conf
