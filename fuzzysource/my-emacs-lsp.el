(use-package lsp-mode
  :commands lsp)

;; optionally
(use-package lsp-ui
  ;; :init
  ;; (require 'lsp-ui)
  :commands lsp-ui-mode)
(use-package company-lsp :commands company-lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(defun my-lsp-hook ()
  (add-to-list 'company-backends 'company-lsp))

(add-hook 'lsp-mode-hook 'my-lsp-hook)

(provide 'my-emacs-lsp)
