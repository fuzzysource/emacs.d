(defun my/lisp-mode-setup ()
  (paredit-mode))

(add-hook 'emacs-lisp-mode-hook 'my/lisp-mode-setup)
(add-hook 'lisp-mode-hook 'my/lisp-mode-setup)

(provide 'my-lisp-mode)
