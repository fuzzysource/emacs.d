(use-package rust-mode
  :init
  (add-hook 'rust-mode-hook #'lsp-deferred))

(provide 'my-rust-mode)
