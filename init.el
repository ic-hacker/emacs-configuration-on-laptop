;; Package.el 
(require 'package)
(package-initialize)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
;; End of Package.el



;; @@@@@@@@@@Initialize@@@@@@@@@@
;; Disable Startup Screen
(setq inhibit-startup-screen t)

;; Disable Scrath Message
(setq initial-scratch-message nil)

;; About backup and auto save.
(setq auto-save-default nil)
(setq auto-save-timeout 0)
(setq auto-save-interval 0)
(setq make-backup-files nil)

;; Set Coding System to UTF-8
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(setq buffer-file-coding-system 'utf-8)

;; Set Font
(set-frame-font "WenQuanYi Zen Hei Mono 10" nil t)

;; Auto Complete for minibuffer
(icomplete-mode 1)

;; Display Time
(display-time-mode 1)
(setq display-time-day-and-date t)

;; Show File Size
(size-indication-mode t)

;; Disable Toolbar
(tool-bar-mode 0)

;; Disable Menubar
(menu-bar-mode 0)

;; Disable Scrollbar
(set-scroll-bar-mode nil)

;; Set Background Color
(set-background-color "black")

;; Set Foreground Color
(set-foreground-color "white")

;; Line number and column number.
(global-linum-mode 1)
(column-number-mode 1)
;; Global Hightlight & Global Font
(global-hl-line-mode 1)
(set-face-attribute hl-line-face nil :background "steel blue")
(set-face-attribute hl-line-face nil :foreground "black")
(global-font-lock-mode 1)

;; Paren mode
'(show-paren-delay 0)
'(show-paren-style 'mixed)
(set-face-background 'show-paren-match "Orange")
(show-paren-mode t)

;; Disable Cursor Blink
(blink-cursor-mode 0)

;; Replace Yes-Or-No  to Y-O-N
(defalias 'yse-or-no-p 'y-or-n-p)

;; Auto Fill
(set-fill-column 80)
(auto-fill-mode 1)

;; Auto Fill Parentheses
(electric-pair-mode 1)

;; Auto Image Mode
(auto-image-file-mode 1)

;; Byte Compile File Error Warn
(setq byte-compile-error-on-warn t)

;; No NewLine End of File
(setq require-final-newline nil)
(setq mode-require-final-newline nil)
(setq next-line-add-newlines nil)

;; Transient Mark Mode
(transient-mark-mode 1)

;; Indent by Space
(setq-default indent-tabs-mode nil)

;; @@@@@@@@@@End of Initialize@@@@@@@@@@



;; **********Keybinding**********
(global-unset-key (kbd "C-x h"))
(global-set-key (kbd "<f9> a") 'mark-whole-buffer)

;; copy
(global-unset-key (kbd "M-w"))
(global-set-key (kbd "<f9> c") 'kill-ring-save)

;; cut
(global-unset-key (kbd "C-w"))
(global-set-key (kbd "<f9> x") 'kill-region)

;; paste
(global-unset-key (kbd "C-y"))
(global-set-key (kbd "<f9> v") 'yank)

;; undo
(global-unset-key (kbd "C-x u"))
(global-set-key (kbd "<f9> z") 'undo)

;; open file
(global-unset-key (kbd "C-x C-f"))
(global-set-key (kbd "<f9> o") 'find-file)

;; save file
(global-unset-key (kbd "C-x C-s"))
(global-set-key (kbd "<f9> s") 'save-buffer)11

;; close file
(global-unset-key (kbd "C-x k"))
(global-set-key (kbd "<f9> w") 'kill-buffer)

;; exit
(global-unset-key (kbd "C-x C-c"))
(global-set-key (kbd "<f9> q") 'save-buffers-kill-terminal)

;; beginning-of-buffer
(global-unset-key (kbd "M-<"))
(global-set-key (kbd "<f9> <") 'beginning-of-buffer)

;; end-of-buffer
(global-unset-key (kbd "M->"))
(global-set-key (kbd "<f9> >") 'end-of-buffer)

;; left buffer
(global-unset-key (kbd "C-x <left>"))
(global-set-key (kbd "S-<left>") 'previous-buffer)

;; right buffer
(global-unset-key (kbd "C-x <right>"))
(global-set-key (kbd "S-<right>") 'next-buffer)

;; one frame
(global-unset-key (kbd "C-x 1"))
(global-set-key (kbd "<f9> 1") 'delete-other-windows)

;; horizontal split
(global-unset-key (kbd "C-x 2"))
(global-set-key (kbd "<f9> 2") 'split-window-below)

;; vertical split
(global-unset-key (kbd "C-x 3"))
(global-set-key (kbd "<f9> 3") 'split-window-right)

;; delete-other-frame
(global-unset-key (kbd "C-x 5 1"))
(global-set-key (kbd "<f9> 5 1") 'delete-other-frames)

;; make-frame-command
(global-unset-key (kbd "C-x 5 2"))
(global-set-key (kbd "<f9> 5 2") 'make-frame-command)

;; make mark
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "<f9> SPC") 'set-mark-command)

;; Flymake
(global-set-key [f7] 'flymake-display-err-menu-for-current-line)
(global-set-key [f8] 'flymake-goto-next-error)

; eval-buffer
(global-set-key [f12] 'eval-buffer)
(provide 'mine-defkey)
;; **********End of Keybinding**********



;; |         Sell         |
(autoload 'shell-script-mode "shell mode" "Major mode for shell files" t nil)

(add-to-list 'auto-mode-alist '("\\.bash_profile\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.bash_history\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.sh\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.bash\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.bashrc.local\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.zshrc\\'" . shell-script-mode))
(add-to-list 'auto-mode-alist '("\\.bashrc\\'" . shell-script-mode))
;; |         End of Shell         |



;; (         Flycheck         )
(add-hook 'after-init-hook #'global-flycheck-mode)
;; (         End of Flycheck         )



;; &&&&&&&&&&Elisp&&&&&&&&&&
(require 'eldoc)
(add-hook 'emacs-lisp-mode-hook '(lambda ()
                                   (local-set-key (kbd "RET")
                                                  'newline-and-indent)))
;; &&&&&&&&&&End of Elisp&&&&&&&&&&


(mapc 'load(directory-files "~/.emacs.d/" t "\\.elc$"))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck-ocaml utop tuareg merlin flycheck yaml-mode markdown-mode company-lua lua-mode company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
