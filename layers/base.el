(setq frame-title-format "%b")
(show-paren-mode 1)
(electric-pair-mode 1)
(setq linum-format " %d")
(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq-default indent-tabs-mode nil) ; And force use of spaces
(turn-on-font-lock)       ; same as syntax on in Vim
(setq inhibit-splash-screen t)
(setq tramp-default-method "ssh")

(use-package ansi-color
 :init
  (defun my/ansi-colorize-buffer ()
    (let ((buffer-read-only nil))
      (ansi-color-apply-on-region (point-min) (point-max))))
  (add-hook 'compilation-filter-hook 'my/ansi-colorize-buffer))

(use-package magit
  :bind
  ("C-x g" . magit-mode))

(use-package origami
  :init
  (global-origami-mode))

(use-package flycheck
  :init
  (global-flycheck-mode))

(use-package buffer-move)

(use-package format-all
  :straight (format-all :host github :repo "lassik/emacs-format-all-the-code")
  :hook (before-save . format-all-buffer))

(use-package whitespace
  :init
  (setq whitespace-line-column 80) ;; limit line length
  (setq whitespace-style '(face tabs empty trailing lines-tail)))

(provide 'base)
