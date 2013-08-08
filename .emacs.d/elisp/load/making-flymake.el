; function that calls bash shell scripts that will read 
;  CMakeLists.txt files and generate makefiles wich will 
;  allow Flymake to work on code.
;
;  NOTE: should be run from ROOT lvl where the build directory is
(defun call-flymake-generate-makefiles()
  (interactive)
  (if (file-accessible-directory-p (expand-file-name "build"))
      (progn (shell-command (concat
			     emacs-script-dir "generateMakefiles.sh build"))
	     (message "Success! Now enable flymake mode (M-x flymake-mode)"))
    (message "Error: No \"build\" directory found!")))

(defun call-flymake-remove-makefiles()
  (interactive)
  (if (file-accessible-directory-p (expand-file-name "build"))
      (progn (shell-command (concat
			     emacs-script-dir "removeMakefiles.sh build"))
	     (message "Success! All flymake makefiles deleted!"))
    (message "Error: No \"build\" directory found!")))

