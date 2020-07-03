(use-package dockerfile-mode
  :init
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))

(use-package docker-compose-mode
  :init
  (add-to-list 'auto-mode-alist '("docker-compose.yaml" . docker-compose-mode))
  (add-to-list 'auto-mode-alist '("docker-compose.yml" . docker-compose-mode)))

(use-package docker
  :bind ("C-c d" . docker))

(provide 'my-docker-mode)
