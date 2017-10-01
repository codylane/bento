#!/bin/sh -eux

/usr/sbin/bootadm set-menu timeout=3 || true
/usr/sbin/bootadm list-menu || true
