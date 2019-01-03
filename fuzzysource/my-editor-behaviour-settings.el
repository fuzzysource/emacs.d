(use-package aggressive-indent
  :init
  (global-aggressive-indent-mode 1)
  (add-to-list 'aggressive-indent-excluded-modes
               '()))


;; https://github.com/zk-phi/sublimity
(require 'sublimity)
(require 'sublimity-scroll)
;; (require 'sublimity-map) ;; experimental
;; (require 'sublimity-attractive)
(sublimity-mode 1)


;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)


;; disable cursor blinking
(blink-cursor-mode -1)

;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

;; Highlight current line globally
(global-hl-line-mode 1)
(set-face-background hl-line-face "gray13")

(provide 'my-editor-behaviour-settings)
