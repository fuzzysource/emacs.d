;;; Code:

;; General settings start from here

(window-divider-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(add-to-list 'default-frame-alist
             '(font . "Dejavu Sans Mono-11"))

;; Modeline config starts from here
(use-package spaceline)

(use-package doom-modeline
  :defer t
  :init
  (doom-modeline-init))


(use-package powerline
  ;;:init
  ;;(powerline-default-theme)
  )

;; Theming starts from here

(use-package spacemacs-theme
  :defer t
  ;; :init
  ;; (load-theme 'spacemacs-dark t)
  ;; (load-theme 'wombat t)
  ;; (spaceline-emacs-theme)
  )

(use-package sublime-themes)

(use-package doom-themes)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled)
(doom-themes-treemacs-config)
  
;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

(load-theme 'doom-spacegrey t)

;; (add-to-list 'default-frame-alist '(font . "Source Code Pro"))
;; (add-to-list 'default-frame-alist '(font . "Noto Mono"))
;; (add-to-list 'default-frame-alist
;;              '(font . "DejaVu Sans Mono-11"))
;; (set-default-font "Source Code Pro-12" nil t)


(provide 'my-appearance)
