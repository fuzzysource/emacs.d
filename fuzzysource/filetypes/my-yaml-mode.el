(use-package yaml-mode
  :init
  (add-hook 'yaml-mode-hook 'highlight-indent-guides-mode)
  (add-hook 'yaml-mode-hook 'highlight-changes-mode))

(provide 'my-yaml-mode)
