(setq package-archives
      '(("melpa" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/melpa/")
        ("org"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/org/")
        ("gnu"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/gnu/")))

(add-to-list 'load-path "~/.emacs.d/fuzzysource")

(require 'use-package)
(setq use-package-always-ensure t)

(require 'my-editing-settings)
(require 'my-appearance)
(require 'my-helm-mode)
(require 'my-projectile-mode)
(require 'my-auto-complete)
(require 'my-python-mode)
(require 'my-lisp-mode)
(require 'my-web-mode)
(require 'my-restclient-mode)
(require 'my-data-language-mode)
(require 'my-markup-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default))
 '(package-selected-packages
   '(company-anaconda spacemacs-theme zerodark-theme origami pyvenv realgud company-mode anaconda-mode helm-projectile use-package helm)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
