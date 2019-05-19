
;; url encoding and decoding
;; credit to: http://www.blogbyben.com/2010/08/handy-emacs-function-url-decode-region.html
(defun url-decode-region (start end)
  "Replace a region with the same contents, only URL decoded."
  (interactive "r")
  (let ((text (url-unhex-string (buffer-substring start end))))
    (delete-region start end)
    (insert text)))

(defun url-encode-region (start end)
  "Replace a region with the same contents, only URL encoded."
  (interactive "r")
  (let ((text (url-hexify-string (buffer-substring start end))))
    (delete-region start end)
    (insert text)))

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


(provide 'my-toolings)
