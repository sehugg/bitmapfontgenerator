#!/bin/bash
DEVPATH=/var/www/html/8bitworkshop.com/dev
DESTPATH=$RSYNC_PATH/bitmapfontgenerator
git ls-files -z | rsync --stats  --copy-dest=$DEVPATH --exclude '.*' --exclude 'scripts/*' --exclude=node_modules -ril --chmod=a+rx -e "ssh" --files-from - -0 . $DESTPATH
rsync --stats -rpilvz --chmod=a+rx -e "ssh" ./gen config.js $DESTPATH/
