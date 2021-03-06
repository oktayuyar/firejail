#!/bin/bash
# This file is part of Firejail project
# Copyright (C) 2014-2016 Firejail Authors
# License GPL v2

export MALLOC_CHECK_=3
export MALLOC_PERTURB_=$(($RANDOM % 255 + 1))

echo "TESTING: /sys/fs access (test/fs/sys_fs.exp)"
./sys_fs.exp

echo "TESTING: kmsg access (test/fs/kmsg.exp)"
./kmsg.exp

echo "TESTING: read/write /var/tmp (test/fs/fs_var_tmp.exp)"
./fs_var_tmp.exp

echo "TESTING: read/write /var/lock (test/fs/fs_var_lock.exp)"
./fs_var_lock.exp

echo "TESTING: read/write /dev/shm (test/fs/fs_dev_shm.exp)"
./fs_dev_shm.exp

echo "TESTING: private (test/fs/private.exp)"
./private.exp `whoami`

echo "TESTING: private-etc (test/fs/private-etc.exp)"
./private-etc.exp

echo "TESTING: empty private-etc (test/fs/private-etc-empty.exp)"
./private-etc-empty.exp

echo "TESTING: private-bin (test/fs/private-bin.exp)"
./private-bin.exp

echo "TESTING: whitelist empty (test/fs/whitelist-empty.exp)"
./whitelist-empty.exp

echo "TESTING: private whitelist (test/fs/private-whitelist.exp)"
./private-whitelist.exp

echo "TESTING: invalid filename (test/fs/invalid_filename.exp)"
./invalid_filename.exp

echo "TESTING: blacklist directory (test/fs/option_blacklist.exp)"
./option_blacklist.exp

echo "TESTING: blacklist file (test/fs/option_blacklist_file.exp)"
./option_blacklist_file.exp

echo "TESTING: blacklist glob (test/fs/option_blacklist_glob.exp)"
./option_blacklist_glob.exp

echo "TESTING: bind as user (test/fs/option_bind_user.exp)"
./option_bind_user.exp

echo "TESTING: recursive mkdir (test/fs/mkdir.exp)"
./mkdir.exp

echo "TESTING: double whitelist (test/fs/whitelist-double.exp)"
./whitelist-double.exp


echo "TESTING: whitelist (test/fs/whitelist.exp)"
./whitelist.exp
rm -fr ~/fjtest-dir
rm -fr ~/fjtest-dir-lnk
rm -f ~/fjtest-file
rm -f ~/fjtest-file-lnk
rm -f /tmp/fjtest-file
rm -fr /tmp/fjtest-dir



