(use-package restclient
  :init
  (add-hook 'restclient-mode-hook #'company-mode-on)
  :config
  (add-to-list 'company-backend 'company-restclient)
  (setq tab-width 2))

(use-package company-restclient)

(use-package es-mode)
(add-to-list 'auto-mode-alist '("\\.es$" . es-mode))

(provide 'my-restclient-mode)
