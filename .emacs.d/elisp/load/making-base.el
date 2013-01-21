; load Emacs base configuration

; enable trucation of long lines
(set-default 'truncate-lines t)

; disable gtk+ dialog boxes
(setq-default use-dialog-box nil)

; enable single-line scrolling
(setq scroll-step 1)
(set-scroll-bar-mode `right)

; enable syntax highlighting
(global-font-lock-mode 1)

; enable selection highlighting
(setq-default transient-mark-mode t)

; enable column mode editing (Ctrl + <enter>)
(cua-selection-mode 1)

; set startup frame size
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 100))

; setting foreground and background colors
(set-face-background 'default "black"); frame background
(set-face-foreground 'default "white"); normal text

(set-background-color "black")
(set-foreground-color "white")

; set cursor color
(set-cursor-color "white")

; display the time
(display-time)

; show line-number in the mode line
(line-number-mode 1)

; show column-number in the mode line
(column-number-mode 1)

; show matching parentheses on mouse over
(show-paren-mode t)

; disable emacs toolbar
(tool-bar-mode -1)

; changes the location where backup files are placed. Instead of
; being spread out all over the filesystem, they're now placed in one
; location.
(if (file-accessible-directory-p (expand-file-name "~/.emacs.d"))
	(add-to-list 'backup-directory-alist
				 (cons "." (expand-file-name "~/.emacs.d/emacs-backups/"))))
 