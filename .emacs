; Emacs Configuration File
; Michael King
;    _-`````-,           ,- '- .    
;  .'   .- - |          | - .   `.  
; /.'  /                     `.   \ 
;:/   :      _...   ..._      ``   :
;::   :     /._ .`:'_.._\.    ||   :
;::    `._ ./  ,`  :    \ . _.''   .
;`:.      |   |  -.  \-. \\_      / 
;  \:._ _/  ..'  .@)  \@) ` `\ ,.'  
;      /,--'       .- .\,-.`-- .    
;       ,'/''     (( \ `  )         
;        /'/'  \    `-'  (          
;         '/''  `._,-----'          
;          ''/'    .,---'           
;           ''/'      ;:            
;             ''/''  ''/            
;               ''/''/''            
;                 '/'/'             
;                  `;               
;    ______                         
;   / ____/___ ___  ____ ___________
;  / __/ / __ `__ \/ __ `/ ___/ ___/
; / /___/ / / / / / /_/ / /__(__  ) 
;/_____/_/ /_/ /_/\__,_/\___/____/  

; directory to search for elisp files
(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
        (let* ((my-lisp-dir "~/.emacs.d/elisp/")
              (default-directory my-lisp-dir))
           (setq load-path (cons my-lisp-dir load-path))
           (normal-top-level-add-subdirs-to-load-path)))

; load emacs base configuration
(load "load/making-base.el")

; load text mode hook
(load "load/making-txtmode.el")

; load cedet
(load "load/making-cedet.el")

; enable cmake-mode
(load "load/making-cmake.el")

; enable doxymacs-mode
(load "load/making-doxymacs.el")

; enable ibuffer buffer menu
(load "load/making-ibuffer.el")

; enable buffer stack and friends
(load "load/making-bufferstack.el")

; enable org mode
(load "load/making-org.el")

; enable flymake mode
(load "load/making-flymake.el")

; enable dark room mode
(load "load/making-darkroom.el")

; enable user-defined text insertion functions
(load "load/making-txtinsertion.el")

; load shell scripts as emacs commands
(load "load/making-scripts.el")

; load multi-term
(load "load/making-multiterm.el")

; load fic mode
(load "load/making-fic.el")

; load xml parse
(load "load/making-xmlparse.el")

; load valgrind functions
(load "load/making-valgrind.el")

; load python functions
(load "load/making-python.el")

; load haskell-mode (installed using aptitude)
(load "/usr/share/emacs/site-lisp/haskell-mode/haskell-site-file")

; load bro-mode
(load "load/making-bromode.el")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(ecb-options-version "2.40")
 '(gnus-demon-handlers (quote ((gnus-demon-scan-mail 1 nil) (gnus-demon-scan-and-update 1 nil))))
 '(org-agenda-files (quote ("~/org-files/mobile-org/notes.org" "~/org-files/mobile-org/agenda.org")))
 '(semantic-c-dependency-system-include-path (quote ("/usr/include" "/usr/lib" "/usr/include/boost")))
 '(show-paren-mode t)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80)))
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#00FF00"))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
(put 'dired-find-alternate-file 'disabled nil)
(put 'upcase-region 'disabled nil)
