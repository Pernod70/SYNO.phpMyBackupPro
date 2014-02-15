#!/bin/sh

chown -R root:root desktop phpMyBackupPro ui
chmod -R 444 *
chmod -R a+X *
chmod -R u+rw *
chmod 777 ./phpMyBackupPro/global_conf.php
rmdir ./phpMyBackupPro/export
mkdir -m a=rwx ./phpMyBackupPro/export
tar -czf package.tgz -X exclude.txt desktop phpMyBackupPro ui

chown -R root:root scripts CHANGELOG INFO package.tgz PACKAGE_ICON.PNG
chmod -R 755 *
tar -cvf ../phpMyBackupPro-2.3-002.spk -X exclude.txt scripts CHANGELOG INFO package.tgz PACKAGE_ICON.PNG

exit 0