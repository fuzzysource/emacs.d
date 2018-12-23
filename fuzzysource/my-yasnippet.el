(use-package yasnippet)
(use-package yasnippet-snippets)

(setq yas-snippet-dirs
      (append yas-snippet-dirs
	      '("~/.emacs.d/fuzzysource/snippets")))

(yas-global-mode 1)

(provide 'my-yasnippet)
