(require 'org-install)

; With this setup, all files with extension '.org' will be put into Org mode.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;(setq org-indent-mode 1)
(setq org-startup-indented 1)

; set the directory where org files are stored
(setq org-directory "~/org-files/")

; allow org-babel to evaluate source code for specific languages
; FIXME: currently doesnt seem to load properly
;(org-babel-do-load-languages
;      'org-babel-load-languages
;      '((emacs-lisp . nil)
; 	(C . t)
; 	(python . t)))

; setup my org-mode hook
(defun my-org-mode-hook ()
  "Perform these actions when org mode is invoked."
  (setq fill-column 80)
  (auto-fill-mode 1))
