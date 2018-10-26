(use-package flycheck
  :init (global-flycheck-mode))

(use-package origami
  :init
  (global-origami-mode)
  (global-set-key (kbd "<M-f3>") 'origami-toggle-node)
  (global-set-key (kbd "<f3>") 'origami-toggle-all-nodes))

(use-package sr-speedbar
  :init
  (global-set-key (kbd "s-s") 'sr-speedbar-toggle))

(use-package all-the-icons)

(use-package neotree
  :bind ("<f8>" . neotree-toggle)
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))

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

(use-package imenu-list
  :init
  (global-set-key (kbd "C-'") #'imenu-list-smart-toggle))

(use-package powerline
  :init (powerline-vim-theme))

(use-package multiple-cursors
  :init
  (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
  (global-set-key (kbd "C->") 'mc/mark-next-like-this)
  (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
  (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))

(show-paren-mode 1)
(electric-pair-mode 1)

(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq indent-tabs-mode nil) ; And force use of spaces
(turn-on-font-lock)       ; same as syntax on in Vim
(setq inhibit-splash-screen t)         ; hide welcome screen

(use-package paredit)


(require 'awesome-tab)
(awesome-tab-mode t)
(global-set-key (kbd "C-c t g") 'awesome-tab-switch-group)
(global-set-key (kbd "M-j") 'awesome-tab-backward-tab)
(global-set-key (kbd "M-k") 'awesome-tab-forward-tab)
(set-face-attribute 'awesome-tab-default nil
		            :height 1.1)
(provide 'my-editing-settings)
