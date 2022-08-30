

(with-eval-after-load "lsp-mode"
  (add-to-list 'lsp-enabled-clients 'clangd))

(provide 'clang-mode)
