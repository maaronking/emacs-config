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

;(set org-catch-invisible-edits 1)
(global-set-key (kbd "M-RET") 'org-insert-heading-respect-content)
(setq org-src-fontify-natively t)

; setup my org-mode hook
(defun my-org-mode-hook ()
  "Perform these actions when org mode is invoked."
  (setq fill-column 80)
  (auto-fill-mode 1))
(add-hook 'org-mode-hook 'my-org-mode-hook)

(defun my-org-inline-css-hook (exporter)
  "Insert custom inline css to automatically set the
background of code to whatever theme I'm using's background"
  (when (eq exporter 'html)
    (let* ((my-pre-bg (face-background 'default))
           (my-pre-fg (face-foreground 'default)))
      (setq
       org-html-head-extra
       (concat
        org-html-head-extra
        (format "<style type=\"text/css\">\n pre.src {background-color: %s; color: %s;}</style>\n"
                my-pre-bg my-pre-fg))))))
(add-hook 'org-export-before-processing-hook 'my-org-inline-css-hook)
