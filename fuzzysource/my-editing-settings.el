(show-paren-mode 1)
(electric-pair-mode 1)
(setq linum-format " %d")
(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq indent-tabs-mode nil) ; And force use of spaces
(turn-on-font-lock)       ; same as syntax on in Vim
(setq inhibit-splash-screen t)         ; hide welcome screen

(use-package flycheck
  :init (global-flycheck-mode))

(use-package origami
  :init
  (global-origami-mode)
  (global-set-key (kbd "<M-f3>") 'origami-toggle-node)
  (global-set-key (kbd "<f3>") 'origami-toggle-all-nodes))

(use-package buffer-move
  :init
  (global-set-key (kbd "<C-S-up>")     'buf-move-up)
  (global-set-key (kbd "<C-S-down>")   'buf-move-down)
  (global-set-key (kbd "<C-S-left>")   'buf-move-left)
  (global-set-key (kbd "<C-S-right>")  'buf-move-right))

(use-package highlight-indent-guides
  :config
  (setq highlight-indent-guides-method 'character)
  (setq highlight-indent-guides-character ?\|))

(use-package powerline
  :init (powerline-vim-theme))

(use-package multiple-cursors
  :init
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(use-package paredit)

(use-package awesome-tab
  :load-path "~/.emacs.d/github/awesome-tab"
  :init
  (require 'awesome-tab)
  (awesome-tab-mode t)
  :bind (("C-c t g" . awesome-tab-switch-group)
	 ("M-j" . awesome-tab-backward-tab)
	 ("M-k" . awesome-tab-forward-tab)))

(provide 'my-editing-settings)
