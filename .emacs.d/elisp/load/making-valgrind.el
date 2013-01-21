; simple function for using valgrind in emacs
;  to allow for jumping into code using valgrind output
(defun call-valgrind (file)
  (interactive "fEnter file: ")
  (shell-command (concat
		  "valgrind --leak-check=full " file))
  (switch-to-buffer-other-window "*Shell Command Output*")
  (compilation-shell-minor-mode t))
