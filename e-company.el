(autoload 'company "company code mode" t nil)

(add-hook 'after-init-hook 'global-company-mode)
'(company-idle-delay 0)