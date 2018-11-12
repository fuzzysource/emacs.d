(use-package helm-projectile
  :init
  (projectile-global-mode)
  (helm-projectile-on)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (require 'awesome-tab)
  (awesome-tab-mode t)
  (global-set-key (kbd "C-c t g") 'awesome-tab-switch-group)
  (global-set-key (kbd "M-j") ' awesome-tab-backward-tab)
  (global-set-key (kbd "M-k") ' awesome-tab-forward-tab)

  :bind ("<f9>" . projectile-grep)
  :config
  (setq projectile-switch-project-action 'neotree-projectile-action))

(provide 'my-projectile-mode)
