(use-package company-go)

(defun my-go-settings ()
  "My custom setting in go mode."
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
  (setq flycheck-checker 'go-gofmt)
  (push 'company-go company-backends))

(add-hook 'go-mode-hook 'my-go-settings)

(provide 'my-go-mode)
