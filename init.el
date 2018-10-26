
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq package-archives
      '(("melpa" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/melpa/")
        ("org"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/org/")
        ("gnu"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/gnu/")))

(add-to-list 'load-path "~/.emacs.d/fuzzysource")
(add-to-list 'load-path "~/.emacs.d/github")

(require 'use-package)
(setq use-package-always-ensure t)

(require 'my-editing-settings)
(require 'my-global-key-bindings)
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
(require 'my-docker-mode)
(require 'my-magit-mode)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" default)))
 '(package-selected-packages
   (quote
    (tabbar wanderlust magit neotree dockerfile-mode company-anaconda spacemacs-theme zerodark-theme origami pyvenv realgud company-mode anaconda-mode helm-projectile use-package helm))))
