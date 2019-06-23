;;; Code:

;; General settings start from here

(window-divider-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Modeline config starts from here
(use-package spaceline)

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

;; (use-package poet-theme)
;; (set-face-attribute 'default nil :family "Iosevka" :height 130)
;; (set-face-attribute 'fixed-pitch nil :family "Iosevka")
;; (set-face-attribute 'variable-pitch nil :family "Baskerville")

(use-package dracula-theme)

(use-package color-theme-modern)

(require 'rand-theme)
;; Themes I *only* want to be selected
(setq rand-theme-wanted
      '(doom-nord
        hickey
        dracula
        doom-molokai
        doom-opera
        doom-one
        doom-one-light
        doom-vibrant
        brin
        granger
        spolsky
        graham
        mccarthy
        wilson
        junio
        ))
(rand-theme)

(provide 'my-appearance)
