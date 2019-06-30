(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/fuzzysource")
(add-to-list 'load-path "~/.emacs.d/fuzzysource/filetypes")

(require 'package-system)
(require 'my-appearance)
(require 'my-edit-settings)
(require 'my-projectile-mode)
(require 'my-evil-mode)
(require 'my-navigation-settings)
(require 'my-auto-complete)
(require 'my-language-server)

;; Load mode-specific config
(require 'my-filetype-settings)
(require 'my-yasnippet)
(require 'my-ctags)
(require 'my-yaml-mode)
(require 'my-rust-mode)
(require 'my-web-mode)
(require 'my-restclient-mode)
(require 'my-markup-mode)
(require 'my-lisp-mode)
(require 'my-java-mode)
(require 'my-docker-mode)
(require 'my-python-mode)
(require 'my-javascript-mode)
(require 'my-go-mode)

;; Tools
(require 'my-toolings)
(require 'my-keybindings)

;; Menus
(require 'my-menu-bar)

;; Custom file
(setq custom-file "~/.emacs-custom.el")
(load custom-file)

