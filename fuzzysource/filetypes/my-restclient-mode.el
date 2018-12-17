(use-package restclient
  :config
  (use-package company-restclient
    :config
    (add-to-list 'company-backend 'company-restclient)
    (add-hook 'restclient-mode-hook #'company-mode-on)))

(provide 'my-restclient-mode)
