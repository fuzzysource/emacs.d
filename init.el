;; (add-to-list 'load-path "~/.emacs.d/fuzzysource")

(add-to-list 'load-path "~/.emacs.d/modes")
(add-to-list 'load-path "~/.emacs.d/bootstrap")
(add-to-list 'load-path "~/.emacs.d/layers")

(require 'bootstrap)

(add-to-list 'default-frame-alist
             '(font . "Source Code Pro-12"))

(require 'macros)
(require 'base)
(require 'appearance)
(require 'windows)
(require 'minibuffer)
(require 'projectile)
(require 'yasnippet)
(require 'auto-completion)
(require 'language-server)
(require 'debug)
(require 'evil)
(require 'keybinding)

;; File mode
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

;; ;; Tools
;; (require 'my-toolings)

;; Menus
;; (require 'my-menu-bar)

;; Custom file
(setq custom-file "~/.emacs-custom.el")
(load custom-file)
