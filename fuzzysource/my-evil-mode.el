;; Evil
(use-package evil
  :init
  (evil-mode 1)
  (setq evil-want-fine-undo t)
  ;; (define-key evil-insert-state-map (kbd "<S-left>") 'left-char)
  ;; (define-key evil-insert-state-map (kbd "<S-right>") 'right-char)
  )

(use-package evil-terminal-cursor-changer
  :init
  (unless (display-graphic-p)
    (require 'evil-terminal-cursor-changer)
    (evil-terminal-cursor-changer-activate) ; or (etcc-on)
    ))

(use-package evil-surround
  :ensure t
  :config
  (global-evil-surround-mode 1))


(provide 'my-evil-mode)
