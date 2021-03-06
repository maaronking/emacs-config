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

; configure dired
(load "load/making-dired.el")

; configure bm (bookmarking)
(load "load/making-bookmark.el")

; load fill-column-indicator mode
(load "load/making-fcimode.el")

; enable ibuffer buffer menu
(load "load/making-ibuffer.el")

; enable neotree
(load "load/making-neotree.el")

; enable dark room mode
(load "load/making-darkroom.el")

; load fic mode
(load "load/making-fic.el")

; load valgrind functions
(load "load/making-valgrind.el")

; load python functions
(load "load/making-python.el")

; load bro-mode
(load "load/making-bromode.el")

; load speedbar configuration
(load "load/making-speedbar.el")

;load development mode
(load "load/making-dev-mode.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(bm-annotate-on-create t)
 '(bm-highlight-style (quote bm-highlight-only-line))
 '(custom-enabled-themes (quote (misterioso)))
 '(haskell-process-type (quote stack-ghci))
 '(minimap-display-semantic-overlays nil)
 '(minimap-recenter-type (quote relative))
 '(minimap-window-location (quote right))
 '(neo-theme (quote nerd))
 '(package-selected-packages
   (quote
    (tabbar-ruler sublimity sr-speedbar projectile peacock-theme org-pdfview neotree multi-term minimap magit-filenotify lua-mode linum-off ibuffer-git htmlize gnuplot-mode gnuplot git-rebase-mode git-gutter-fringe git-commit-mode git fill-column-indicator fic-mode epc ecb dired-k dired+ cpputils-cmake column-marker circe ac-haskell-process)))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tool-bar-position (quote right)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
