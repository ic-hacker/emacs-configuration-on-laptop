;;; package --- Summary
;;; Commentary:
;;;
;;; Code:
(autoload 'utop "utop" "Toplevel for OCaml" t)

(autoload 'merlin-mode "Merlin" "Merlin mode" t nil)

(autoload 'tuareg-mode  "Tuareg" "Tuageg mode" t nil)

(load "/home/ic_hacker/.opam/default/share/emacs/site-lisp/merlin.el")
(load "/home/ic_hacker/.opam/default/share/emacs/site-lisp/tuareg-site-file.el")
(load "/home/ic_hacker/.opam/default/share/emacs/site-lisp/merlin-company.el")

(let ((opam-share (ignore-errors (car (process-lines "opam" "config" "var" "share")))))
  (when (and opam-share (file-directory-p opam-share))
    (add-to-list 'load-path (expand-file-name "emacs/site-lisp" opam-share))
    (add-hook 'tuareg-mode-hook 'merlin-mode t)
    (add-hook 'caml-mode-hook 'merlin-mode t)
    (setq merlin-command 'opam)))

(provide 'e-ocaml)
;;; e-ocaml ends here
