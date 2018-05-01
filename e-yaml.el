(autoload 'yaml-mode "yaml-mode" "Major mode for yaml file" t nil)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))