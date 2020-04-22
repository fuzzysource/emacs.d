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

;; Use keybindings
(use-package grip-mode
  :bind (:map markdown-mode-command-map
              ("g" . grip-mode))
  :config
  ;; These configuration was taken from grip-mode homepage
  ;; Path to the grip binary
  ;; (setq grip-binary-path "/path/to/grip")

  ;; A GitHub username for API authentication
  (setq grip-github-user "")

  ;; A GitHub password or auth token for API auth
  (setq grip-github-password "")

  ;; When nil, update the preview after file saves only, instead of also
  ;; after every text change
  (setq grip-update-after-change nil)

  ;; Use embedded webkit to previe
  ;; This requires GNU/Emacs version >= 26 and built with the `--with-xwidgets`
  ;; option.
  (setq grip-preview-use-webkit nil)
  )

(add-hook 'nxml-mode-hook
          (lambda ()
            (nxml-child-indent 4) ))

(use-package toml-mode
  :straight t)

(provide 'my-markup-mode)
