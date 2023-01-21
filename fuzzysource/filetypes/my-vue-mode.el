(use-package vue-mode
  :config
  (setq js-indent-level 2)
  (add-to-list 'lsp-enabled-clients 'vue-language-server)
  (prettier-js-mode)
  )

(provide 'my-vue-mode)
