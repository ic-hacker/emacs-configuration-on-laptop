(autoload 'markdown-mode "markdown-mode" "Major mode for editing markdown file" t nil)
(autoload 'gfm-mod "gfm-mode" "Major mode foe editing markdown for Github" t nil)

(add-to-list 'auto-mode-alist '("\\.markdown\\'". markdown-mode))
(add-to-list 'auto-mode-alist '("\\\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))