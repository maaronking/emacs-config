; toggle showing hidden files/directories with dired (M-o)
(require 'dired-x)
(setq-default dired-omit-files-p -1)  ; uncomment to change default behavior to hide files
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))

(global-auto-revert-mode 1)

(require 'dired-k)
(define-key dired-mode-map (kbd "K") 'dired-k)
 
;;; always execute dired-k when dired buffer is opened
;(add-hook 'dired-initial-position-hook 'dired-k)
