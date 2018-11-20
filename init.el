
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(add-to-list 'load-path "~/.emacs.d/fuzzysource")
(let ((default-directory  "~/.emacs.d/github"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'host-machine-config)

(package-initialize)
(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (require 'use-package))
(setq use-package-always-ensure t)

(require 'my-ivy-mode)
(require 'my-evil-mode)
(require 'my-editing-settings)
(require 'my-appearance)
(require 'my-sidebar-mode)
(require 'my-browsing-mode)
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


(require 'my-global-key-bindings)


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
 '(ansi-color-names-vector
   ["#1B2229" "#BF616A" "#A3BE8C" "#ECBE7B" "#8FA1B3" "#c678dd" "#46D9FF" "#DFDFDF"])
 '(custom-safe-themes
   (quote
    ("f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" default)))
 '(fci-rule-color "#65737E")
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#D08770"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#A3BE8C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#4f5b66"))
 '(nxml-child-indent 4)
 '(package-selected-packages
   (quote
    (doom-modeline doom-themes groovy-mode ibuffer-git yaml-mode web-mode wanderlust use-package tabbar sublime-themes sr-speedbar spacemacs-theme spaceline rust-mode realgud pyvenv paredit origami neotree multiple-cursors meghanada markdown-toc markdown-preview-mode magit imenu-list highlight-indent-guides helm-projectile dockerfile-mode dired-sidebar company-restclient company-quickhelp company-anaconda buffer-move all-the-icons-dired)))
 '(vc-annotate-background "#2F3841")
 '(vc-annotate-color-map
   (list
    (cons 20 "#A3BE8C")
    (cons 40 "#bbbe86")
    (cons 60 "#d3be80")
    (cons 80 "#ECBE7B")
    (cons 100 "#e2ab77")
    (cons 120 "#d99973")
    (cons 140 "#D08770")
    (cons 160 "#cc8294")
    (cons 180 "#c97db8")
    (cons 200 "#c678dd")
    (cons 220 "#c370b6")
    (cons 240 "#c16890")
    (cons 260 "#BF616A")
    (cons 280 "#a35f69")
    (cons 300 "#875e68")
    (cons 320 "#6b5c67")
    (cons 340 "#65737E")
    (cons 360 "#65737E")))
 '(vc-annotate-very-old-color nil))
