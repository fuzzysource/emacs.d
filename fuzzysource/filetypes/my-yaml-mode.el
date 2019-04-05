(use-package yaml-mode
  :init
  (add-hook 'yaml-mode-hook 'highlight-indent-guides-mode))

(provide 'my-yaml-mode)
