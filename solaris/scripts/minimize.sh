#!/bin/sh -ux

/usr/bin/dd if=/dev/zero of=/EMPTY bs=1048576
/usr/bin/rm -f /EMPTY

# Block until the empty file has been removed, otherwise, Packer
# will try to kill the box while the disk is still full and that's bad
/usr/bin/sync
/usr/bin/sync

/usr/bin/echo "File sync complete, gracefully shutting down system"
