(add-to-list 'load-path "~/.emacs.d/fuzzysource")
(add-to-list 'load-path "~/.emacs.d/fuzzysource/filetypes")
(add-to-list 'load-path "~/.emacs.d/github")

(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-12"))

(require 'package-system)
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

;; (require 'my-tab)
(require 'my-appearance)
(require 'my-edit-settings)
(require 'my-projectile-mode)
(require 'my-evil-mode)
(require 'my-navigation-settings)
(require 'my-auto-complete)
(require 'my-treemacs)
(require 'my-emacs-lsp)
(require 'my-eglot)
(require 'my-dap)

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
(require 'my-typescript-mode)
(require 'my-json-mode)
(require 'my-clojure-mode)
(require 'my-lua-mode)
(require 'my-nginx)

;; Tools
(require 'my-toolings)
(require 'my-keybindings)

;; Menus
(require 'my-menu-bar)

;; Custom file
(setq custom-file "~/.emacs-custom.el")
(load custom-file)
(put 'upcase-region 'disabled nil)
