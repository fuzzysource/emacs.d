;;(global-set-key (kbd "M-1") 'save-buffer)
(global-set-key (kbd "M-2") 'revert-buffer)
(global-set-key (kbd "M-q") 'fill-paragraph)
;; (global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "C-x a") 'mark-whole-buffer)
(global-set-key (kbd "C-x /") 'comment-or-uncomment-region)
(global-set-key (kbd "<f11>") 'linum-mode)

(define-key evil-normal-state-map ";" 'comment-line)

(provide 'my-global-key-bindings)
