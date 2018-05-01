(autoload 'lua-mode "lua-mode" "Major mode foe editing lua code. (fn)" t nil)
(autoload 'company-lua "company-lua" "company for lua mode " t nil)

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(defalias 'run-lua #'lua-start-process)

(autoload 'lua-start-process "lua-mode" "\
Start a lua process named NAME, running PROGRAM.
PROGRAM defaults to NAME, which defaults to `lua-default-application'.
When called interactively, switch to the process buffer.
\(fn &optional NAME PROGRAM STARTFILE &rest SWITCHES)" t nil)