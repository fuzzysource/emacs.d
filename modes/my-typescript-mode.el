(use-package tide)
(use-package ng2-mode)

(defun my-typescript-hook ()
  (setq typescript-indent-level 2)
  (prettier-js-mode 1)
  (tide-setup)
  (tide-hl-identifier-mode))

(add-hook 'typescript-mode-hook 'my-typescript-hook)

(provide 'my-typescript-mode)
