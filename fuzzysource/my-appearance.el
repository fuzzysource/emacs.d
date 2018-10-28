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


;; (add-to-list 'default-frame-alist '(font . "Source Code Pro"))
;; (add-to-list 'default-frame-alist '(font . "Noto Mono"))
;; (add-to-list 'default-frame-alist
;;              '(font . "DejaVu Sans Mono-11"))
;; (set-default-font "Source Code Pro-12" nil t)

(add-to-list 'default-frame-alist
             '(font . "Space Mono-13"))
(load-theme 'brin t)

(provide 'my-appearance)
