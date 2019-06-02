(define-key-after
  global-map
  [menu-bar mymenu]
  (cons "Magic" (make-sparse-keymap "hoot hoot"))
  'tools )

(define-key
  global-map
  [menu-bar mymenu ue]
  '("URL encode region" . url-encode-region))

(define-key
  global-map
  [menu-bar mymenu ud]
  '("URL decode region" . url-decode-region))

(define-key
  global-map
  [menu-bar mymenu mark-all-in-region]
  '("MC - Mark all in region" . mc/mark-all-in-region))

(define-key
  global-map
  [menu-bar mymenu edit-beginings-of-lines]
  '("MC - Mark beginning of lines" . mc/edit-beginnings-of-lines))

(define-key-after
  global-map
  [menu-bar dap]
  (cons "DAP" (make-sparse-keymap "dap-mode"))
  'tools )


(provide 'my-menu-bar)
