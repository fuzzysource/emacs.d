(use-package multiple-cursors)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mvark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Mark all in region
(define-key
  global-map
  [menu-bar mymenu mair]
  '("MC - Mark all in region" . mc/mark-all-in-region))


(provide 'my-multiple-cursors)
