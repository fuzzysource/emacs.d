(use-package sr-speedbar
  :init
  (global-set-key (kbd "S-s") 'sr-speedbar-toggle))

(use-package all-the-icons)

(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq neo-window-fixed-size nil)
  (setq neo-window-width 35)
  :bind ("<f8>" . neotree-toggle))

(use-package ibuffer-sidebar
  :commands (ibuffer-sidebar-toggle-sidebar)
  :bind ("C-x C-b" . ibuffer-sidebar-toggle-sidebar))

(use-package imenu-list
  :init
  (global-set-key (kbd "C-'") #'imenu-list-smart-toggle))

(provide 'my-sidebar-mode)
