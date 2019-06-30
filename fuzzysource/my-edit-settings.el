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

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; disable cursor blinking
(blink-cursor-mode -1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)


(require 'flycheck)
(global-flycheck-mode)

(require 'origami)
(global-origami-mode)

(require 'buffer-move)

(require 'highlight-indent-guides)
(setq highlight-indent-guides-method 'character)
(setq highlight-indent-guides-character ?\|)
(setq highlight-indent-guides-responsive 'top)

(require 'paredit)
(require 'magit)

(require 'whitespace)
(global-whitespace-mode 1)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))

(require 'move-text)

(require 'ansi-color)
(defun my/ansi-colorize-buffer ()
  (let ((buffer-read-only nil))
    (ansi-color-apply-on-region (point-min) (point-max))))
(add-hook 'compilation-filter-hook 'my/ansi-colorize-buffer)


(require 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))



;; Highlight current line globally
;; (global-hl-line-mode 1)
;; (set-face-background hl-line-face "black")

;; which-key
(require 'which-key)
(which-key-mode)

;; popup-keyring

(require 'popup-kill-ring)

;; multiple-cursors
(require 'multiple-cursors)

(provide 'my-edit-settings)
