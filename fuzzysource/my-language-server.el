(use-package lsp-mode)

(use-package company-lsp)

(use-package lsp-ui)

(defun init-lsp ()
  (push 'company-lsp company-backends))

(add-hook 'lsp-mode-hook 'init-lsp)

(provide 'my-language-server)
