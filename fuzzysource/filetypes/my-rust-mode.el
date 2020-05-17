(use-package rust-mode
  :init
  (setq lsp-rust-server 'rust-analyzer)
  (add-hook 'rust-mode-hook #'lsp-deferred))

(provide 'my-rust-mode)
