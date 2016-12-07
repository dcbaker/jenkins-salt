#!/bin/sh

cp /sys/class/drm/card0/error $1
chown $2 $1
chgrp $2 $1
