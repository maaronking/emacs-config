; This file contains all of the various scripts to that can
; be run as commands from emacs

; Directory where shell scripts to be run from emacs are located
(setq emacs-script-dir "~/.emacs.d/shell_scripts/")

; Run the emacs backup script. This script will run rsync on 
; all files necessary to maintain my emacs configuration and
; store them in my Dropbox folder
(defun call-emacs-backup-script()
  (interactive)
  (progn (shell-command (concat
			 emacs-script-dir "backup_emacs.sh &"))))

; Run the system backup script. This script will run rsync on 
; all files necessary to maintain my system configuration and
; store them in my Dropbox folder.  (NOTE: This also includes
; running the emacs backup script automagically.
(defun call-sys-backup-script()
  (interactive)
  (progn (shell-command (concat
			 emacs-script-dir "backup_sys.sh &&" 
			 emacs-script-dir "backup_emacs.sh &"))))