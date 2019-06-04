(use-package flycheck
  :init (global-flycheck-mode))

(use-package origami
  :init (global-origami-mode))

(use-package buffer-move)

(use-package highlight-indent-guides
  :config
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-character ?\|)
  (setq highlight-indent-guides-responsive 'top))

(use-package paredit)

(use-package magit)

(use-package whitespace
  ;; :init
  ;; (global-whitespace-mode 1)
  ;; (setq whitespace-line-column 80) ;; limit line length
  ;; (setq whitespace-style '(face tabs empty trailing lines-tail))
  )

(use-package move-text)

(use-package ansi-color)

(defun my/ansi-colorize-buffer ()
  (let ((buffer-read-only nil))
    (ansi-color-apply-on-region (point-min) (point-max))))
(add-hook 'compilation-filter-hook 'my/ansi-colorize-buffer)

(use-package exec-path-from-shell
  :init
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize)))

(setq tramp-default-method "ssh")

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; disable cursor blinking
(blink-cursor-mode -1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; Highlight current line globally
;; (global-hl-line-mode 1)
;; (set-face-background hl-line-face "black")

;; which-key
(use-package which-key
  :init
  (which-key-mode))

(show-paren-mode 1)
(electric-pair-mode 1)
(setq linum-format " %d")
(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq-default indent-tabs-mode nil) ; And force use of spaces
(turn-on-font-lock)       ; same as syntax on in Vim
(setq inhibit-splash-screen t)         ; hide welcome screen
(column-number-mode)

;; popup-keyring

(use-package popup-kill-ring)

;; multiple-cursors
(use-package multiple-cursors)

(use-package exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'my-common-settings)
