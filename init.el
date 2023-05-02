(add-to-list 'load-path "~/.emacs.d/fuzzysource")
(add-to-list 'load-path "~/.emacs.d/fuzzysource/filetypes")
(add-to-list 'load-path "~/.emacs.d/github")
;; (defvar native-comp-deferred-compilation-deny-list nil)


;;(add-to-list 'default-frame-alist
;;             '(font . "Source Code Pro-12"))
(setq exec-path (append exec-path '(".nvm/versions/node/v16.15.1/bin")))
(setq warning-minimum-level :emergency)
(require 'package-system)
(require 'exec-path-from-shell)


(defun mac-switch-meta nil
  "switch meta between Option and Command"
  (interactive)
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta)
  )

;;;; Mouse scrolling in terminal emacs
(unless (display-graphic-p)
  ;; activate mouse-based scrolling
  (xterm-mouse-mode 1)
  (global-set-key (kbd "<mouse-4>") 'scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'scroll-up-line)
  )

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize)
  (mac-switch-meta)
  )
(setq make-backup-files nil)
(require 'my-tab)
(require 'my-appearance)
(require 'my-edit-settings)
(require 'my-projectile-mode)
(require 'my-evil-mode)
(require 'my-navigation-settings)
(require 'my-auto-complete)
(require 'my-treemacs)
(require 'my-eglot)
(require 'my-emacs-lsp)
;; (require 'my-dap)
(require 'buffer-move)
;; Load mode-specific config
(require 'my-filetype-settings)
(require 'my-yasnippet)
(require 'my-ctags)
(require 'my-yaml-mode)
(require 'my-rust-mode)
(require 'my-web-mode)
(require 'my-frontend-mode)
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
(require 'protobuf-mode)
(require 'my-flutter)
(require 'clang-mode)
(require 'my-vue-mode)
(require 'my-term-mode)
(require 'my-vue-mode)
(require 'my-jupyter)
(require 'my-org-mode)
;; Tools
(require 'my-toolings)
(require 'my-keybindings)

;; Menus
(require 'my-menu-bar)

;; Custom file
(setq custom-file "~/.emacs-custom.el")
(load custom-file)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
