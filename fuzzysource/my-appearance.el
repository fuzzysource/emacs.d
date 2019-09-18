;; (use-package spaceline)

(use-package doom-modeline
  :init
  (doom-modeline-mode 1))

(use-package sublime-themes)

(use-package doom-themes
  :init
  (doom-themes-org-config)
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))

(use-package dracula-theme)

;; (use-package chocolate-theme)

(use-package rand-theme
  :straight (rand-theme :host github :repo "gopar/rand-theme")
  :init
  (setq rand-theme-wanted
      '(doom-nord
        hickey
        dracula
        doom-molokai
        doom-opera
        doom-one
        doom-vibrant
        brin
        granger
        spolsky
        graham
        wilson
        junio
        chocolate
        ))
  (rand-theme))

(use-package golden-ratio
  :straight (golden-ratio :host github :repo "roman/golden-ratio.el"))
(use-package all-the-icons)

(provide 'my-appearance)
