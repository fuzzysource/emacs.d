(use-package lsp-mode
  :straight (lsp-mode :host github :repo "emacs-lsp/lsp-mode")
  :commands (lsp lsp-deferred)
  :config
  (push 'company-lsp company-backends))

;; optionally
(use-package lsp-ui
  ;; :init
  ;; (require 'lsp-ui)
  :straight (lsp-ui :host github :repo "emacs-lsp/lsp-ui")
  :commands lsp-ui-mode
  ;; language server mode
  :custom
  (lsp-ui-doc-max-width 50)
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions]
    #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references]
    #'lsp-ui-peek-find-references))

(use-package company-lsp
  :straight (company-lsp :host github :repo "tigersoldier/company-lsp")
  :commands company-lsp
  )

(use-package lsp-treemacs
  :straight (lsp-treemacs :host github :repo "emacs-lsp/lsp-treemacs")
  :commands lsp-treemacs-errors-list)

(provide 'my-emacs-lsp)
