; enable fic-mode, this mode highlights "FIXME" in strings in code
(require 'fic-mode)

; set major mode to enable fic minor mode
(add-hook 'c++-mode-hook 'turn-on-fic-mode)
(add-hook 'c-mode-hook 'turn-on-fic-mode)
(add-hook 'python-mode-hook 'turn-on-fic-mode)
