(use-package flycheck
  :init (global-flycheck-mode))

(use-package origami
  :init
  (global-origami-mode))

(use-package buffer-move
  :init
  (eval-after-load 'buffer-move (buffer-move 1))
  :config
  (global-set-key (kbd "<C-S-up>")     'buf-move-up)
  (global-set-key (kbd "<C-S-down>")   'buf-move-down)
  (global-set-key (kbd "<C-S-left>")   'buf-move-left)
  (global-set-key (kbd "<C-S-right>")  'buf-move-right))

(use-package highlight-indent-guides
  :config
  (setq highlight-indent-guides-character ?\|))

(show-paren-mode 1)


(provide 'my-editing-settings)
