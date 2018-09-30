(use-package helm-projectile
  :init
  (projectile-global-mode)
  :config
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (helm-projectile-on))

(provide 'my-projectile-mode)
