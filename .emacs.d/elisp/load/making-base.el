; load Emacs base configuration

; enable trucation of long lines
(set-default 'truncate-lines t)

; disable gtk+ dialog boxes
(setq-default use-dialog-box nil)

; enable single-line scrolling
;(set 'scroll-step 1)
;(set-scroll-bar-mode `right)

; enable syntax highlighting
(global-font-lock-mode 1)

; enable selection highlighting
;(setq-default transient-mark-mode t)

; enable column mode editing (Ctrl + <enter>)
(cua-selection-mode 1)

; set startup frame size
;(add-to-list 'default-frame-alist '(height . 50))
;(add-to-list 'default-frame-alist '(width . 100))

; setting foreground and background colors
;(set-face-background 'default "black"); frame background
;(set-face-foreground 'default "white"); normal text

;(set-background-color "black")
;(set-foreground-color "white")

; set cursor color
;(set-cursor-color "white")

; display the time
(display-time)

; show line-number in the mode line
(line-number-mode 1)

; display line numbers in the left column in certain modes
(require 'linum)
(add-hook 'c++-mode-hook 'linum-mode)
(add-hook 'haskell-mode-hook 'linum-mode)
(add-hook 'c-mode-hook 'linum-mode)
(add-hook 'python-mode-hook 'linum-mode)
(add-hook 'lua-mode-hook 'linum-mode)
(add-hook 'text-mode-hook 'linum-mode)
(add-hook 'lisp-mode-hook 'linum-mode)
(add-hook 'emacs-lisp-mode 'linum-mode)
(add-hook 'markdown-mode-hook 'linum-mode)

(require 'linum-off)

; show the git gutter
(require 'git-gutter-fringe)
(global-git-gutter-mode t)

; show column-number in the mode line
(column-number-mode 1)

; Display size of the buffer.
(set 'size-indication-mode t)

; show matching parentheses on mouse over
;(show-paren-mode t)

; disable emacs toolbar
;(tool-bar-mode -1)

;;; Default to using spaces instead of tabs (customize later as needed).
(set-default 'indent-tabs-mode nil)

;; Compilation output
(setq compilation-scroll-output t)

;;; ----------------------------------------------------------------------
;;; Text
;;; ----------------------------------------------------------------------

;;; Use real TAB characters (not spaces).
(add-hook 'text-mode-hook
          '(lambda () (define-key text-mode-map
                        "\t" 'self-insert-command) ))


;;; ----------------------------------------------------------------------
;;; Conf
;;; ----------------------------------------------------------------------

;;; Use real TAB characters (not spaces).
(add-hook 'conf-mode-hook
          '(lambda () (define-key conf-mode-map
                        "\t" 'self-insert-command) ))


;;; ----------------------------------------------------------------------
;;; Makefile
;;; ----------------------------------------------------------------------

;;; Use real TAB characters (not spaces).
(add-hook 'makefile-mode-hook
          '(lambda () (define-key makefile-mode-map 
                        "\t" 'self-insert-command) ))


;;; ----------------------------------------------------------------------
;;; C/C++
;;; ----------------------------------------------------------------------

;;(require 'cc-mode)
;;(set 'auto-mode-alist
;;     (append '(("\\.c$"   . c-mode)
;;               ("\\.h$"   . c-mode)
;;               ("\\.cpp$" . c++-mode)
;;               ("\\.hpp$" . c++-mode)
;;               ("\\.ipp$" . c++-mode)
;;               ("\\.cc$"  . c++-mode)
;;               ("\\.hh$"  . c++-mode)
;;               ("\\.C$"   . c++-mode)
;;               ("\\.H$"   . c++-mode))
;;             auto-mode-alist))

;;; ----------------------------------------------------------------------
;;; XML
;;; ----------------------------------------------------------------------

(require 'nxml-mode)
(set 'auto-mode-alist
     (append '(("\\.gxl$" . nxml-mode)
               ("\\.rdf$" . nxml-mode)
               ("\\.rng$" . nxml-mode)
               ("\\.svg$" . nxml-mode)
               ("\\.xml$" . nxml-mode)
               ("\\.xsl$" . nxml-mode)
               ("\\.xul$" . nxml-mode))
             auto-mode-alist))

;;; ======================================================================
;;; Prevent automatic execution of editor commands embedded within files
;;; (such commands could be used by a cracker or malicious user).
;;; This setting is a security feature -- do not remove or change it
;;; unless you know what you are doing.
;;; ======================================================================
(set 'enable-local-variables "ask")

;;; Set the frame's title:
;;;   %b is the name of the buffer.
;;;   %+ is the state of the buffer:
;;;      ("*" if modified, "%" if read only, "-" otherwise.
;;;       Two of them to emulate the mode line.)
;;;   %f is the file name.
(set 'frame-title-format
     (concat "%b %+%+ " user-login-name "@" system-name))

; changes the location where backup files are placed. Instead of
; being spread out all over the filesystem, they're now placed in one
; location.
(if (file-accessible-directory-p (expand-file-name "~/.emacs.d"))
	(add-to-list 'backup-directory-alist
				 (cons "." (expand-file-name "~/.emacs.d/emacs-backups/"))))
 
