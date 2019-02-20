;;; Code:

;; General settings start from here

(window-divider-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Modeline config starts from here
(use-package spaceline)

;; (require 'quelpa-use-package)
(use-package doom-modeline
  ;; :quelpa (doom-modeline :fetcher github :repo "seagle0128/doom-modeline")
  :defer t
  :init
  (doom-modeline-init))

(use-package sublime-themes)

(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled)
  (doom-themes-treemacs-config))

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)

;; (load-theme 'junio t)
(load-theme 'doom-molokai t)

(provide 'my-appearance)
