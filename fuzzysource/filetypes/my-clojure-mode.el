(use-package rainbow-delimiters
  :straight (rainbow-delimiter :host github :repo "Fanael/rainbow-delimiters"))


(use-package clojure-mode
  :straight (clojure-mode :host github :repo "clojure-emacs/clojure-mode")
  :hook ((clojure-mode . lsp)
         (clojurec-mode . lsp)
         (clojurescript-mode . lsp))
  :config
  (add-to-list 'lsp-enabled-clients 'clojure-lsp)
  (add-to-list 'lsp-enabled-clients 'clojure-lsp-remote)
  )

(use-package cider)
(provide 'my-clojure-mode)
