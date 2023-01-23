(use-package vue-mode
  :config
  ;; 0, 1, or 2, representing (respectively) none, low, and high coloring
  (setq mmm-submode-decoration-level 0)
  (setq js-indent-level 2)
  (add-to-list 'lsp-enabled-clients 'vue-language-server)
  (prettier-js-mode)
  )

(provide 'my-vue-mode)
