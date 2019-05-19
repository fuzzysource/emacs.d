(let ((default-directory  "~/.emacs.d/github"))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'load-path "~/.emacs.d/fuzzysource")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)

(package-initialize)
(require 'host-machine-config)

(eval-when-compile
  ;; Following line is not needed if use-package.el is in ~/.emacs.d
  (require 'use-package)
  (package-initialize))
(setq use-package-always-ensure t)
(use-package auto-package-update
  :config
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(add-to-list 'load-path "~/.emacs.d/fuzzysource/filetypes")
(require 'my-appearance)
(require 'my-common-settings)
(require 'my-projectile-mode)
(require 'my-evil-mode)
(require 'my-navigation-settings)
(require 'my-auto-complete)

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
(require 'my-language-server)

;; Tools
(require 'my-toolings)
(require 'my-multiple-cursors)
(require 'my-keybindings)

;; Menus



;; Custom file
(setq custom-file "~/.emacs-custom.el")
(load custom-file)
