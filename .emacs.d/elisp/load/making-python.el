; simple function to jump straight into an ipython 
;  interactive shell
(defun ipython-shell()
  (interactive)
  (multi-term)
  (process-send-string nil "ipython\n"))

(defun ipython-exit-shell()
  (interactive)
  (process-send-string "terminal<1>" (concat "exit()\n" "y\n" "exit\n")))