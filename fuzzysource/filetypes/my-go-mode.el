(defun my-go-settings ()
  "My custom setting in go mode."
  (setq indent-tabs-mode nil)
  (setq tab-width 2))

(add-hook 'go-mode-hook 'my-go-settings)

(provide 'my-go-mode)
