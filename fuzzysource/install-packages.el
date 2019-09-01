(use-package spaceline)
(use-package doom-modeline)
(use-package sublime-themes)
(use-package doom-themes)
(use-package dracula-theme)
(use-package chocolate-theme)
(use-package rand-theme
  :quelpa (rand-theme :fetcher github :repo "gopar/rand-theme"))
(use-package golden-ratio
  :quelpa (golden-ratio :fetcher github :repo "roman/golden-ratio.el"))
(use-package all-the-icons)

(use-package company)
(use-package company-quickhelp)

(use-package awesome-tab
  :ensure t
  :quelpa (awesome-tab
           :fetcher github
           :repo "manateelazycat/awesome-tab"))

(use-package buffer-move)
(use-package origami)
(use-package flycheck)

(use-package highlight-indent-guides)
(use-package paredit)
(use-package magit)
(use-package whitespace)
(use-package move-text)
(use-package ansi-color)
(use-package which-key)
(use-package popup-kill-ring)
(use-package multiple-cursors)
(use-package exec-path-from-shell)


;; Projectile
(use-package projectile)
(use-package counsel-projectile)

;; Evil
(use-package evil)
(use-package evil-commentary)

;; File browsing and navigation
(use-package ranger)
(use-package counsel-etags)
(use-package neotree)
(use-package imenu-list)
(use-package ivy)
(use-package ibuffer-sidebar)
(use-package sr-speedbar)
(use-package ace-window)
(use-package avy)


(use-package lsp-mode)
(use-package lsp-ui)
(use-package company-lsp)
(use-package lsp-treemacs)
(use-package dap-mode)

(provide 'install-packages)
