(setq doom-themes-enable-bold t
      doom-themes-enable-italic t)
(doom-themes-treemacs-config)
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
        mccarthy
        wilson
        junio
        ))
(rand-theme)

(provide 'my-appearance)
