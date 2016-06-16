;; CEDET configuration 
;;
;; This is the most finicky package I have ever dealt with...
;;
;; This configuration seems to get me what I want (minus completion)
;;   with the github version of CEDET:
;;
;;   git clone http://git.code.sf.net/p/cedet/git cedet-git
;;
;; Don't forget to compile at the top level and in the 'contrib' directories

(load-file "~/Downloads/cedet/cedet-devel-load.el")
(load-file "~/Downloads/cedet/contrib/semantic-tag-folding.el")

;; EDE Example
;; ;; ccss-protocols project
;; ;(when (file-exists-p "~/Dev/ccss-protocols/CMakeLists.txt")
;; ;  (setq ccss-protocols-project
;; ;  (ede-cpp-root-project "ccss-protocols"
;; ;                        :file "~/Dev/ccss-protocols/CMakeLists.txt"
;; ;                        :system-include-path '("/home/making/Dev/ccss-protocols"
;; ;                                               boost-base-directory))))
 
(defun do-after-decorate () (semantic-tag-folding-mode t) )
(add-hook 'semantic-decoration-mode-hook 'do-after-decorate) 
; 
;; shortcut for ecb
;(global-set-key (kbd "C-x e") 'ecb-activate)
; 
(semantic-mode 1)
(require 'semantic/ia)
(require 'semantic/bovine/c)
(require 'semantic/bovine/gcc)
; 
;; Semantic
(global-semantic-idle-completions-mode t)
(global-semantic-decoration-mode t)
(global-semantic-highlight-func-mode t)
(global-semantic-show-unmatched-syntax-mode t)

(semantic-add-system-include "/usr/include/boost" 'c++-mode)

(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)

;; if you want to enable support for gnu global
(when (cedet-gnu-global-version-check t)
  (semanticdb-enable-gnu-global-databases 'c-mode)
  (semanticdb-enable-gnu-global-databases 'c++-mode))
