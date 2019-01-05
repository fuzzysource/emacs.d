;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)


;; disable cursor blinking
(blink-cursor-mode -1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; Highlight current line globally
(global-hl-line-mode 1)
(set-face-background hl-line-face "gray13")


;; which-key
(use-package which-key
  :init
  (which-key-mode))

(provide 'my-editor-behaviour-settings)
