(use-package helm-projectile
  :init
  (projectile-global-mode)
  (helm-projectile-on)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  :bind ("<f9>" . projectile-grep)
  :config
  (setq projectile-switch-project-action 'neotree-projectile-action))

(provide 'my-projectile-mode)
