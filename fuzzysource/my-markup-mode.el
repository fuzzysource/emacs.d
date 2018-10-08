(use-package markdown-mode
  :init
  (autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
  
  (autoload 'gfm-mode "markdown-mode"
    "Major mode for editing GitHub Flavored Markdown files" t)
  :init (setq markdown-command "multimarkdown"))

(use-package markdown-preview-mode)

(provide 'my-markup-mode)
