;; Projectile
(use-package projectile
  :init
  (projectile-global-mode)
  :config
  (add-to-list 'projectile-globally-ignored-files "*.pyc")
  (add-to-list 'projectile-globally-ignored-directories "__pycache__")
  (add-to-list 'projectile-globally-ignored-directories ".tox")
  (add-to-list 'projectile-globally-ignored-directories "straight")
  (add-to-list 'projectile-globally-ignored-directories "node_modules")
  (add-to-list 'projectile-globally-ignored-directories ".extension"))

(use-package counsel-projectile
  :init
  (counsel-projectile-mode 1))

(use-package ripgrep
  :straight (ripgrep :host github :repo "nlamirault/ripgrep.el")
  :after (projectile)
  :init
  (global-set-key (kbd "C-c C-g") #'projectile-ripgrep))



;; (setq projectile-switch-project-action 'neotree-projectile-action)
;; Dir-local projectile config

;; M-x projectile-edit-dir-locals

(provide 'my-projectile-mode)
