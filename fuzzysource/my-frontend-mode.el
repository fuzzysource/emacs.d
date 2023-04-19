(use-package rjsx-mode
  :config
  (add-to-list 'lsp-enabled-clients 'jsts-ls)
  (lsp-deferred)
  )

(provide 'my-frontend-mode)
