;; This elisp file contains the lisp to enable Dark-Room and Write-Room modes
;;
;; NOTE: These editing modes require the 'wmctrl' tool to be installed

;; Full Screen
(defun switch-full-screen (&optional ii)
  (interactive "p")
  (if (> ii 0)
      (shell-command "wmctrl -r :ACTIVE: -badd,fullscreen"))
  (if (< ii 0)
      (shell-command "wmctrl -r :ACTIVE: -bremove,fullscreen"))
  (if (equal ii 0)
      (shell-command "wmctrl -r :ACTIVE: -btoggle,fullscreen")))

;; Dark Room
;;
;; (enable)
(defun darkroom-mode ()
  "Make things simple-looking by removing decoration 
	 and choosing a simple theme."
  (interactive)
  (switch-full-screen 1)     ;; requires above function 
  ;(color-theme-retro-green)  ;; requires color-theme
  (setq left-margin 10)
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  ;(set-face-foreground 'mode-line "gray15")
  ;(set-face-background 'mode-line "black")
  (auto-fill-mode 1))

;; (disable)
(defun darkroom-mode-exit ()
  (interactive)
  (switch-full-screen -1)
  (color-theme-subtle-hacker) ;; Choose your favorite theme
  (menu-bar-mode 1)
  (tool-bar-mode 1)
  (scroll-bar-mode 1)
  (set-left-margin 0))

;; Write Room
(defun write-room ()
  "Make a frame without any bling."
  (interactive)
  ;; to restore:
  ;; (setq mode-line-format (default-value 'mode-line-format))
  (let ((frame (make-frame '((minibuffer . nil)
			     (vertical-scroll-bars . nil)
			     (left-fringe . 0); no fringe
			     (right-fringe . 0)
			     (background-mode . dark)
			     (background-color . "black")
			     (foreground-color . "green")
			     (cursor-color . "green")
			     (border-width . 0)
			     (border-color . "black"); should be unnecessary
			     (internal-border-width . 64); whitespace!
			     (cursor-type . box)
			     (menu-bar-lines . 0)
			     (tool-bar-lines . 0)
			     (mode-line-format . nil) ; dream on... has no effect
			     (fullscreen . fullboth)  ; this should work
			     (unsplittable . t)))))
    (select-frame frame)
    (find-file "~/NOTES")
    ;(setq mode-line-format nil); is buffer local unfortunately
    (setq-default mode-line-format nil)
    ;; maximize window if fullscreen above had no effect
    (when (fboundp 'w32-send-sys-command)
      (w32-send-sys-command 61488 frame))))
