(use-package all-the-icons
  ;; :straight (all-the-icons :host github :repo "domtronn/all-the-icons.el")
  )

(use-package minimal-theme
  :straight (minimal-theme :host github :repo "anler/minimal-theme")
  :defer t)

(use-package grayscale-theme
  :defer t)
(load-theme 'grayscale t)

(defun fz/after-theme-loaded ()
  (custom-set-faces
   '(ivy-current-match
     ((((class color) (background light))
       :background "purple" :foreground "white")
      (((class color) (background dark))
       :background "purple" :foreground "white")))))

(fz/after-theme-loaded)

(use-package doom-modeline
  :straight (doom-modeline :host github :repo "seagle0128/doom-modeline")
  :after (all-the-icons)
  :init
  (doom-modeline-mode 1))

(scroll-bar-mode -1)
(tool-bar-mode -1)

(provide 'appearance)
