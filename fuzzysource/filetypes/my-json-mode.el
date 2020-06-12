(use-package json-mode
  :straight (json-mode :host github :repo "joshwnj/json-mode")
  :config
  (setq json-reformat:indent-width 2)
  )

(provide 'my-json-mode)
