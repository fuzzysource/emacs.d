(use-package tide)
(use-package ng2-mode)
(use-package typescript-mode
  :config
  (setq typescript-indent-level 2)
  (prettier-js-mode 1)
  (tide-setup)
  (tide-hl-identifier-mode)
  (add-to-list 'lsp-enabled-clients 'jsts-ls)
  (lsp-deferred)
  )

;; (defun my-typescript-hook ()
;;   )

;; (add-hook 'typescript-mode-hook 'my-typescript-hook)

(provide 'my-typescript-mode)
