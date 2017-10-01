#!/bin/bash -eux

# Add pkgadd auto-answer file
sudo mkdir -p /tmp
sudo chmod 777 /tmp
echo "mail=" > /tmp/nocheck
echo "instance=overwrite" >> /tmp/nocheck
echo "partial=nocheck" >> /tmp/nocheck
echo "runlevel=nocheck" >> /tmp/nocheck
echo "idepend=nocheck" >> /tmp/nocheck
echo "rdepend=nocheck" >> /tmp/nocheck
echo "space=nocheck" >> /tmp/nocheck
echo "setuid=nocheck" >> /tmp/nocheck
echo "conflict=nocheck" >> /tmp/nocheck
echo "action=nocheck" >> /tmp/nocheck
echo "basedir=default" >> /tmp/nocheck

echo "all" > /tmp/allfiles

VAGRANT_HOMEDIR=`/usr/bin/getent passwd vagrant | /usr/bin/cut -d':' -f6`
if [ -n ${VAGRANT_HOMEDIR} ]; then
  VBGADEV=`/usr/sbin/lofiadm -a ${VAGRANT_HOMEDIR}/VBoxGuestAdditions.iso`
  /usr/sbin/mount -F hsfs -o ro ${VBGADEV} /mnt

  /usr/sbin/pkgrm  -a /tmp/nocheck -n SUNWvboxguest
  /usr/sbin/pkgadd -a /tmp/nocheck -G -d /mnt/VBoxSolarisAdditions.pkg < /tmp/allfiles
  /usr/sbin/umount /mnt
  /usr/sbin/lofiadm -d ${VBGADEV}
  rm -f ${VAGRANT_HOMEDIR}/VBoxGuestAdditions.iso
fi
