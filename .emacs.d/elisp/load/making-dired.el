; toggle showing hidden files/directories with dired (M-o)
(require 'dired-x)
(setq dired-omit-mode 1) ; Turn on Omit mode.

(setq-default dired-omit-files-p t)
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))

 ; automatically revert buffers to what is on disk
(global-auto-revert-mode 1)

