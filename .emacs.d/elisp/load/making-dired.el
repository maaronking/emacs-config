; toggle showing hidden files/directories with dired (M-o)
(require 'dired-x)
(setq dired-omit-mode t) ; Turn on Omit mode.

(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))

 ; automatically revert buffers to what is on disk
(global-auto-revert-mode 1)

; dont hide file details by default
(setq dired-hide-details-mode -1)

;(require 'dired-k)
;(define-key dired-mode-map (kbd "K") 'dired-k)
 
;;; always execute dired-k when dired buffer is opened
;(add-hook 'dired-initial-position-hook 'dired-k)
