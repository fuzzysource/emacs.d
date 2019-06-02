(use-package lsp-mode
  :hook (python-mode . lsp)
  :commands lsp
  )

(use-package lsp-ui :commands  lsp-ui-mode)
;; optionally

(use-package company-lsp :commands company-lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
(require 'lsp-ui)
(use-package dap-mode)

(defun my-lsp-hook ()
  (add-to-list 'company-backends 'company-lsp))

(add-hook 'lsp-mode-hook 'my-lsp-hook)

(provide 'my-language-server)
