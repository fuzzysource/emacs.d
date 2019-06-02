(use-package yasnippet)
(use-package yasnippet-snippets)

(setq yas-snippet-dirs
      (append yas-snippet-dirs
              '("~/.emacs.d/fuzzysource/snippets")))

(provide 'my-yasnippet)
