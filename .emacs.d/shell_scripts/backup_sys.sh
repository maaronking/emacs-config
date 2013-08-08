#!/usr/bin/env bash

# This script is intended to backup all configuration files
#  as well as source code, images, and misc. files that would
#  be required in order to restore my system
#
# Author: Michael Aaron King

# Root backup directory
BACKUPDIR_ROOT="/home/making/Dropbox/Data/"

# Backup directories
BACKGROUNDS_BACKUPDIR="${BACKUPDIR_ROOT}Backgrounds"
ICONS_BACKUPDIR="${BACKUPDIR_ROOT}Icons"
CONKY_BACKUPDIR="${BACKUPDIR_ROOT}Conky"
ENCRYPT_BACKUPDIR="${BACKUPDIR_ROOT}Locker"

# Backup the backgrounds on this system
rsync --archive --verbose ~/pics/backgrounds/* ${BACKGROUNDS_BACKUPDIR}

# Backup the icons on this system
rsync --archive --verbose ~/pics/icons/* ${ICONS_BACKUPDIR}

# Backup conky configuration
rsync --archive --verbose ~/.conkyrc ${CONKY_BACKDIR}

# Backup encrypted data
rsync --archive --verbose ~/.locker/* ${ENCRYPT_BACKUPDIR}
