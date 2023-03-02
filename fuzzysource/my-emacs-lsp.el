
(use-package lsp-mode
  :straight (lsp-mode :host github :repo "emacs-lsp/lsp-mode")
  :commands (lsp lsp-deferred)
  :config
  (dolist (m '(clojure-mode
               clojurec-mode
               clojurescript-mode
               clojurex-mode))
    (add-to-list 'lsp-language-id-configuration `(,m . "clojure")))
  (lsp-register-client
   (make-lsp-client :new-connection (lsp-tramp-connection "gopls")
                    :major-modes '(go-mode)
                    :remote? t
                    :server-id 'gopls-remote)))

(add-to-list 'tramp-remote-path 'tramp-own-remote-path)

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

(use-package lsp-treemacs
  :straight (lsp-treemacs :host github :repo "emacs-lsp/lsp-treemacs")
  :commands lsp-treemacs-errors-list)

(provide 'my-emacs-lsp)
