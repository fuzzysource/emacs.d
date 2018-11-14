(use-package markdown-toc)

(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :mode (("\\.markdown\\'" . markdown-mode)
	 ("\\.md\\'" . gfm-mode))
  :bind (:map markdown-mode-map
	 ("<M-up>" . markdown-move-up)
	 ("<M-down>" . markdown-move-down)
	 ("<M-left>" . markdown-promote)
	 ("<M-right>" . markdown-demote)
	 ([f5] . markdown-toc-generate-or-refresh-toc)))

(add-hook 'nxml-mode-hook
	  (lambda ()
	    (nxml-child-indent 4) ))

(provide 'my-markup-mode)
