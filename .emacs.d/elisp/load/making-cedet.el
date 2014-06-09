;;; ; CEDET configuration 
;(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
; 
;(require 'eassist)
;(require 'semantic-ia)
;(require 'semantic-gcc)
;(require 'semantic-lex-spp)
;(require 'semantic-decorate-include)
; 

;(semantic-load-enable-code-helpers)
;(semantic-add-system-include "/usr/include/boost" 'c++-mode)
; 
;(global-srecode-minor-mode 1)
; 
;;; ; semantic configuration
;;; (semantic-load-enable-gaudy-code-helpers) 
;(semantic-load-enable-minimum-features)

;; 
;; ;(global-semantic-mru-bookmark-mode 1)

;; ;(custom-set-variables
;; ;'(semantic-idle-scheduler-idle-time 2)
;; ;'(semantic-self-insert-show-completion-function
;; ;(lambda nil (semantic-ia-complete-symbol-menu (point))))
;; ;'(global-semantic-tag-folding-mode t nil (semantic-util-modes)))

;; ; senator configuration
;; ;(setq senator-minor-mode-name "SN")
;; ;(setq semantic-imenu-auto-rebuild-directory-indexes nil)

;; ;(global-srecode-minor-mode 1)

;; ;(setq-mode-local c-mode semanticdb-find-default-throttle
;; ;'(project unloaded system recursive))
;; ;(setq-mode-local c++-mode semanticdb-find-default-throttle
;; ;'(project unloaded system recursive))
;; ;(setq-mode-local erlang-mode semanticdb-find-default-throttle
;; ;'(project unloaded system recursive))

;; ;; customisation of modes
;; ;(defun alexott/cedet-hook ()
;; ;(local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
;; ;(local-set-key "\C-c?" 'semantic-ia-complete-symbol)
;; ;;;
;; ;(local-set-key "\C-c>" 'semantic-complete-analyze-inline)
;; ;(local-set-key "\C-c=" 'semantic-decoration-include-visit)
;; ;(local-set-key (kbd "C-c G") 'semantic-symref)
;; ;(local-set-key "\C-j" 'semantic-ia-fast-jump)
;; ;(local-set-key "\C-cq" 'semantic-ia-show-doc)
;; ;(local-set-key "\C-cs" 'semantic-ia-show-summary)
;; ;(local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
;; ;(local-set-key (kbd "C-c <left>") 'semantic-tag-folding-fold-block)
;; ;(local-set-key (kbd "C-c <right>") 'semantic-tag-folding-show-block)
;; ;)
;; ; 
;; ;(add-hook 'c-mode-common-hook 'alexott/cedet-hook)
;; ;(add-hook 'lisp-mode-hook 'alexott/cedet-hook)
;; ;(add-hook 'scheme-mode-hook 'alexott/cedet-hook)
;; ;(add-hook 'emacs-lisp-mode-hook 'alexott/cedet-hook)
;; ;(add-hook 'erlang-mode-hook 'alexott/cedet-hook)
;; ; 
;; ;(defun alexott/c-mode-cedet-hook ()
;; ;(local-set-key "\C-ct" 'eassist-switch-h-cpp)
;; ;(local-set-key "\C-xt" 'eassist-switch-h-cpp)
;; ;(local-set-key "\C-ce" 'eassist-list-methods)
;; ;(local-set-key "\C-c\C-r" 'semantic-symref)
;; ;)
;; ; 
;; ;(add-hook 'c-mode-common-hook 'alexott/c-mode-cedet-hook)
;; ; 
;; ;;; hooks, specific for semantic
;; ;(defun alexott/semantic-hook ()
;; ;(imenu-add-to-menubar "TAGS")
;; ;)
;; ; 
;; ;(add-hook 'semantic-init-hooks 'alexott/semantic-hook)

;; ;; gnu global support
;; (when (cedet-gnu-global-version-check t)
;; (require 'semanticdb-global)
;; (semanticdb-enable-gnu-global-databases 'c-mode)
;; (semanticdb-enable-gnu-global-databases 'c++-mode))

;; ;; ctags
;; ;(when (cedet-ectag-version-check t)
;; ;(require 'semanticdb-ectag)
;; ;(semantic-load-enable-primary-exuberent-ctags-support))

;; ;;; ede customization
;; (global-ede-mode t)
;; (ede-enable-generic-projects)

;; ;; ccss-protocols project
;; ;(when (file-exists-p "~/Dev/ccss-protocols/CMakeLists.txt")
;; ;  (setq ccss-protocols-project
;; ;  (ede-cpp-root-project "ccss-protocols"
;; ;                        :file "~/Dev/ccss-protocols/CMakeLists.txt"
;; ;                        :system-include-path '("/home/making/Dev/ccss-protocols"
;; ;                                               boost-base-directory))))

(load-file "~/Dev/external/cedet/cedet-devel-load.el")
(load-library "contrib/semantic-tag-folding.el")

(defun do-after-decorate () (semantic-tag-folding-mode t) )
(add-hook 'semantic-decoration-mode-hook 'do-after-decorate) 

; shortcut for ecb
(global-set-key (kbd "C-x e") 'ecb-activate)

(semantic-mode 1)
(require 'semantic/ia)
(require 'semantic/bovine/c)
(require 'semantic/bovine/gcc)

; Semantic
(global-semantic-idle-completions-mode t)
(global-semantic-decoration-mode t)
(global-semantic-highlight-func-mode t)
(global-semantic-show-unmatched-syntax-mode t)

;; CC-mode
(add-hook 'c-mode-hook '(lambda ()
        (setq ac-sources (append '(ac-source-semantic) ac-sources))
        (local-set-key (kbd "RET") 'newline-and-indent)
        (linum-mode t)
        (semantic-mode t)))

;; Autocomplete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories (expand-file-name
             "~/.emacs.d/elpa/auto-complete-1.4.20110207/dict"))
(setq ac-comphist-file (expand-file-name
             "~/.emacs.d/ac-comphist.dat"))
(ac-config-default)
