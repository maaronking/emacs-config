; enable cmake mode
(autoload 'cmake-mode "~/.emacs.d/elisp/modules/cmake-mode.el" "CMake Mode." t)
(add-to-list 'auto-mode-alist '("\\CMakeLists.txt\\'" . cmake-mode))
(add-to-list 'interpreter-mode-alist '("cmake" . cmake-mode))
