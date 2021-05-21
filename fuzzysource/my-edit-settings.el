(use-package buffer-move)

(defun format-buffer ()
  (interactive)
  (unless (seq-contains-p '() major-mode)
    (delete-trailing-whitespace)
    (format-all-buffer)))

(use-package format-all
  :straight (format-all :host github :repo "lassik/emacs-format-all-the-code")
  :bind ([f10] . format-all-buffer)
  :hook (before-save . format-buffer)
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

(use-package magit)

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


(provide 'my-edit-settings)
