;; This elisp file contains the lisp to enable Dev Mode

;; Dev Mode
;;
;; (enable)
(defun dev-mode()
  "Enable development mode"
  (interactive)
  (darkroom-mode)
  (tabbar-mode)
  ;;(add-hook 'neo-after-create-hook (lambda () (set-face-attribute 'default t :height 100)))
  (neotree-show))
