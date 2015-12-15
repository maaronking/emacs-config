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

; configure MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

; load emacs base configuration
(load "load/making-base.el")

; load cedet
(load "load/making-cedet.el")

; enable cmake-mode
(load "load/making-cmake.el")

; configure dired
(load "load/making-dired.el")

; enable doxymacs-mode
(load "load/making-doxymacs.el")

; enable ibuffer buffer menu
(load "load/making-ibuffer.el")

; enable org mode
(load "load/making-org.el")

; enable neotree
(load "load/making-neotree.el")

; enable flymake mode
(load "load/making-flymake.el")

; enable dark room mode
(load "load/making-darkroom.el")

; load shell scripts as emacs commands
(load "load/making-scripts.el")

; load fic mode
(load "load/making-fic.el")

; load xml parse
(load "load/making-xmlparse.el")

; load valgrind functions
(load "load/making-valgrind.el")

; load python functions
(load "load/making-python.el")

; load bro-mode
(load "load/making-bromode.el")

; load speedbar configuration
(load "load/making-speedbar.el")

(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))
;; OPTIONAL, avoid typing full path when starting gdb
(global-set-key (kbd "C-c C-g")
 '(lambda ()(interactive) (gud-gdb (concat "gdb --fullname " (cppcm-get-exe-path-current-buffer)))))

(global-set-key (kbd "C-x c") 'compile)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(circe-network-options (quote (("DuranDuran" :host "durandu.ran.sandia.gov" :port 6667 :channels ("#sandia" "#weasel")))))
 '(column-number-mode t)
 '(compilation-scroll-output t)
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wombat)))
 '(display-time-mode t)
 '(ecb-compile-window-height 6)
 '(ecb-layout-window-sizes (quote (("dev-layout" (ecb-directories-buffer-name 0.15 . 0.5492957746478874) (ecb-methods-buffer-name 0.15 . 0.43661971830985913)))))
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--C-mouse-1))
 '(ecb-show-sources-in-directories-buffer (quote ("left7" "left13" "left14" "left15" "dev-layout")))
 '(ecb-source-path (quote (("/" "/") "/home/making" "/home/making/Dev" "/home/making/bro-code" "/home/making/weaselboard" "/home/making/ccss-protocols")))
 '(ecb-tip-of-the-day nil)
 '(fill-column 80)
 '(global-linum-mode nil)
 '(gnus-demon-handlers (quote ((gnus-demon-scan-mail 1 nil) (gnus-demon-scan-and-update 1 nil))))
 '(line-number-mode nil)
 '(linum-disabled-modes-list (quote (eshell-mode wl-summary-mode compilation-mode org-mode text-mode dired-mode neotree-mode)))
 '(minimap-always-recenter nil)
 '(minimap-dedicated-window nil)
 '(minimap-display-semantic-overlays t)
 '(minimap-hide-scroll-bar nil)
 '(minimap-recenter-type (quote free))
 '(minimap-update-delay 0.8)
 '(minimap-width-fraction 0.2)
 '(minimap-window-location (quote right))
 '(neo-auto-indent-point t)
 '(neo-banner-message nil)
 '(neo-cwd-line-style (quote text))
 '(neo-smart-open t)
 '(neo-theme (quote ascii))
 '(org-agenda-files (quote ("~/org-files/mobile-org/notes.org" "~/org-files/mobile-org/agenda.org")))
 '(org-babel-load-languages (quote ((emacs-lisp . t) (C . t) (haskell . t) (python . t))))
 '(semantic-c-dependency-system-include-path (quote ("/usr/include" "/usr/lib" "/usr/include/boost")))
 '(show-paren-mode t)
 '(tab-stop-list (quote (4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80)))
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#4E9A06"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(neo-button-face ((t (:underline nil))))
 '(neo-dir-link-face ((t (:foreground "DeepSkyBlue"))))
 '(neo-expand-btn-face ((t (:foreground "SkyBlue"))))
 '(neo-file-link-face ((t (:foreground "White"))))
 '(neo-header-face ((t (:foreground "White")))))
(put 'dired-find-alternate-file 'disabled nil)
(put 'upcase-region 'disabled nil)
