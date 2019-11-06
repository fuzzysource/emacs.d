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

(use-package material-theme
  :straight (material-theme :host github :repo "cpaulik/emacs-material-theme"))

(use-package golden-ratio
  :straight (golden-ratio :host github :repo "roman/golden-ratio.el"))
(use-package all-the-icons)

(load-theme 'material t)

;; (use-package cycle-themes
;;   :straight (cycle-themes :host github :repo "toroidal-code/cycle-themes.el")
;;   :ensure t
;;   :init (setq cycle-themes-theme-list
;;               '(
;;                 material-light
;;                 material
;;                 doom-nord
;;                 hickey
;;                 dracula
;;                 doom-molokai
;;                 doom-opera
;;                 doom-opera-light
;;                 doom-one
;;                 doom-vibrant
;;                 brin
;;                 granger
;;                 spolsky
;;                 graham
;;                 wilson
;;                 junio
;;                 chocolate))
;;   :config (cycle-themes-mode)
;;   :bind (("<f2>" . cycle-themes))
;;   :hook ((cycle-theme-after-cycle . my/after-theme-changed)))

(defun my/after-theme-loaded ()
  (custom-set-faces
   '(ivy-current-match
     ((((class color) (background light))
       :background "red" :foreground "white")
      (((class color) (background dark))
       :background "purple" :foreground "white"))))
  (centaur-tabs-headline-match))

(my/after-theme-loaded)

(provide 'my-appearance)
