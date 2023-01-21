(use-package eglot
  :straight (eglot :host github :repo "joaotavora/eglot")
  :bind (
         :map eglot-mode-map
         ("C-c h" . eglot-help-at-point)
         ("<f6>" . xref-find-definitions)
         )
  :config
  (add-to-list 'eglot-server-programs '(go-mode . ("gopls")))
  (add-to-list 'eglot-server-programs '(vue-mode . ("vls")))
  ;; (add-to-list 'eglot-server-programs
  ;;              '(vue-mode . ("/Users/fuzzysource/.nvm/versions/node/v16.15.1/bin/vue-language-server" "--stdio"
  ;;                            :initializationOptions
  ;;                            ((:typescript
  ;;                              (:tsdk "/Users/fuzzysource/.nvm/versions/node/v16.15.1/lib/node_modules/typescript/lib"
  ;;                                     )))))
  ;;              )
  ;; (add-to-list 'eglot-server-programs
  ;;              '(vue-html-mode . ("/Users/fuzzysource/.nvm/versions/node/v16.15.1/bin/vue-language-server" "--stdio")))

  )

(provide 'my-eglot)
