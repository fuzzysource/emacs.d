(use-package vterm
  :straight (:host github :repo "akermu/emacs-libvterm" )
  )

(use-package vterm-toggle
  :bind ("<f2>" . vterm-toggle-cd))

(provide  'my-term-mode)
