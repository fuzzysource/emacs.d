(use-package rainbow-delimiters
  :straight (rainbow-delimiter :host github :repo "Fanael/rainbow-delimiters"))


(use-package clojure-mode
  :straight (clojure-mode :host github :repo "clojure-emacs/clojure-mode")
  :hook
  ((clojure-mode . paredit-mode)
   (clojure-mode . rainbow-delimiters-mode)))

(use-package cider)
(provide 'my-clojure-mode)
