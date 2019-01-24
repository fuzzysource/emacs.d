
(use-package lsp-mode
  :commands lsp
  :config
  (require 'lsp-clients))

(use-package company-lsp
  :commands company-lsp)
(use-package lsp-ui
  :commands lsp-ui-mode)

(add-hook 'lsp-mode-hook 'lsp-ui-mode)
(require 'lsp-ui)
(require 'company-lsp)
(push 'company-lsp company-backends)

(provide 'my-language-server)
