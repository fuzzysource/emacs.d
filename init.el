
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

(require 'host-machine-config)

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
(require 'my-rust-mode)
(require 'my-java-mode)
(require 'my-sidebar-mode)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(awesome-tab-default ((t (:inherit default :height 1.1))))
 '(awesome-tab-selected ((t (:inherit awesome-tab-default :foreground "orange red" :overline "green3" :weight ultra-bold :width semi-expanded))))
 '(awesome-tab-unselected ((t (:inherit awesome-tab-default :foreground "light gray" :overline "dark green"))))
 '(font-lock-comment-face ((t (:foreground "#65737e" :slant italic)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (ibuffer-git yaml-mode web-mode wanderlust use-package tabbar sublime-themes sr-speedbar spacemacs-theme spaceline rust-mode realgud pyvenv paredit origami neotree multiple-cursors meghanada markdown-toc markdown-preview-mode magit imenu-list highlight-indent-guides helm-projectile dockerfile-mode dired-sidebar company-restclient company-quickhelp company-anaconda buffer-move all-the-icons-dired))))
