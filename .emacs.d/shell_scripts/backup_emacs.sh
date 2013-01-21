#!/bin/bash

BACKUPDIR="/home/making/Dropbox/Data/Emacs/"

rsync --archive --verbose ~/.emacs23 ${BACKUPDIR}
rsync --archive --verbose ~/.emacs ${BACKUPDIR}