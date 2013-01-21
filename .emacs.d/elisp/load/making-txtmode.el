(defun my-text-mode-hook ()
  "Perform these actions when text mode is invoked."
  (setq fill-column 66)
  (auto-fill-mode 1))

(add-hook 'text-mode-hook 'my-text-mode-hook)