(use-package eglot
  :straight (eglot :host github :repo "joaotavora/eglot")
  :bind (
         :map eglot-mode-map
         ("C-c h" . eglot-help-at-point)
         ("<f6>" . xref-find-definitions)
         )
  :config
  (add-to-list 'eglot-server-programs '(go-mode . ("gopls")))
  )

(provide 'my-eglot)
