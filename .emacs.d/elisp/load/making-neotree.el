(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

(setq projectile-switch-project-action 'neotree-projectile-action)

(add-hook 'c++-mode-hook 'neotree-show)
(add-hook 'c-mode-hook 'neotree-show)
(add-hook 'python-mode-hook 'neotree-show)
(add-hook 'haskell-mode-hook 'neotree-show)
(add-hook 'cmake-mode-hook 'neotree-show)
