(use-package lsp-mode
  :commands lsp
  :config
  (add-to-list 'company-backends 'company-lsp)
  )

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(provide 'language-server)
