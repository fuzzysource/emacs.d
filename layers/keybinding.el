;; Evil normal mode

(bind-evil-normal "b k" 'kill-this-buffer)
(bind-evil-normal "b <left>" 'buf-move-left)
(bind-evil-normal "b <right>" 'buf-move-right)
(bind-evil-normal "b <up>" 'buf-move-up)
(bind-evil-normal "b <down>" 'buf-move-down)
(bind-evil-normal "b r" 'revert-buffer)
(bind-evil-normal "b w" 'switch-to-buffer)
(bind-evil-normal "b n" 'switch-to-next-buffer)
(bind-evil-normal "b p" 'switch-to-prev-buffer)

(bind-evil-normal "w <down>" 'split-window-below)
(bind-evil-normal "w <right>" 'split-window-right)
(bind-evil-normal "w k" 'delete-window)

(provide 'keybinding)
