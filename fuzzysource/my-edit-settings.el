(use-package buffer-move)

(defun format-buffer ()
  (interactive)
  (unless (seq-contains-p '() major-mode)
    (delete-trailing-whitespace)
    (format-all-buffer)))

(use-package format-all
  :straight (format-all :host github :repo "lassik/emacs-format-all-the-code")
  :bind ([f10] . format-all-buffer)
  :init (add-hook 'prog-mode-hook 'format-all-mode)
  (add-hook 'format-all-mode-hook 'format-all-ensure-formatter)
  )

(use-package origami
  :init
  (global-origami-mode))

(use-package flycheck
  :init
  (global-flycheck-mode))

(use-package highlight-indent-guides
  :init
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-character ?|)
  (setq highlight-indent-guides-responsive 'top))

(use-package paredit)

(use-package magit
  :commands (magit-status)
  :bind ([f4] . magit-status))

(use-package whitespace
  :init
  (setq whitespace-line-column 80) ;; limit line length
  (setq whitespace-style '(face tabs empty trailing lines-tail)))

(use-package move-text)

(use-package ansi-color
  :init
  (defun my/ansi-colorize-buffer ()
    (let ((buffer-read-only nil))
      (ansi-color-apply-on-region (point-min) (point-max))))
  (add-hook 'compilation-filter-hook 'my/ansi-colorize-buffer))

(use-package which-key
  :init
  (which-key-mode))

(use-package popup-kill-ring)
(use-package multiple-cursors)

(setq frame-title-format "%b")
(show-paren-mode 1)
(electric-pair-mode 1)
(setq linum-format " %d")
(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq-default indent-tabs-mode nil) ; And force use of spaces
(turn-on-font-lock)       ; same as syntax on in Vim
(setq inhibit-splash-screen t)         ; hide welcome screen
(column-number-mode)
(setq tramp-default-method "ssh")
(tool-bar-mode -1)
(scroll-bar-mode -1)
;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; disable cursor blinking
(blink-cursor-mode -1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(auto-save-default t)
;;  '(auto-save-interval 1)
;;  '(auto-save-timeout 1))

;; (setq auto-save-visited-file-name t)

(use-package ivy-posframe
  :init
  (ivy-posframe-mode 1)
  (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-top-center)))
  )

(provide 'my-edit-settings)
