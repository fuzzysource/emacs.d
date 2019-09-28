(use-package lsp-mode
  :commands lsp)

;; optionally
(use-package lsp-ui
  ;; :init
  ;; (require 'lsp-ui)
  :commands lsp-ui-mode
  ;; language server mode
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions]
    #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references]
    #'lsp-ui-peek-find-references))

(use-package company-lsp :commands company-lsp)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(defun my-lsp-hook ()
  (add-to-list 'company-backends 'company-lsp))

(add-hook 'lsp-mode-hook 'my-lsp-hook)

(provide 'my-emacs-lsp)
