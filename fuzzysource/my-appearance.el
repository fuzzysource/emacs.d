;; (use-package spaceline)

;; (use-package spacemacs-theme
;;   :defer t
;;   :init
;;   (load-theme 'spacemacs-dark t)
;;   (load-theme 'wombat t)
;;   (spaceline-emacs-theme)
;;   )

(use-package sublime-themes)

(use-package powerline
  :init
  (powerline-default-theme))


(add-to-list 'default-frame-alist '(font . "Source Code Pro"))
;; (add-to-list 'default-frame-alist '(font . "Noto Mono"))


(load-theme 'granger t)

(provide 'my-appearance)
