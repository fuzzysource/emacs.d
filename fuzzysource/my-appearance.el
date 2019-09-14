
;; (setq doom-themes-enable-bold t
;;       doom-themes-enable-italic t)
(require 'doom-themes)
(doom-themes-org-config)

(require 'rand-theme)
;; Themes I *only* want to be selected
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
(rand-theme)
;; (doom-themes-treemacs-config)

(require 'doom-modeline)
(doom-modeline-mode 1)

(require 'golden-ratio)

(provide 'my-appearance)
