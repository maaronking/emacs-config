; call before loading cedet.el 
(setq semantic-load-turn-everything-on t)

; CEDET Configuration
(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
(semantic-load-enable-gaudy-code-helpers)
(global-semantic-tag-folding-mode)
(global-srecode-minor-mode 1)
;(global-ede-mode 1)

(require 'semantic-ia)
(require 'semantic-gcc)

(require 'semanticdb)
(global-semanticdb-minor-mode 1)

(global-set-key (kbd "C-j") 'semantic-ia-fast-jump)
(global-set-key (kbd "C-c G") 'semantic-symref)

; ECB (Emacs Code Browser) Configuration
(add-to-list 'load-path "~/.emacs.d/ecb-2.40")
(require 'ecb-autoloads)
