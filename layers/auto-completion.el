(use-package company
  :init
  (global-company-mode)
  :config
  (setq company-idle-delay 0.5)
  (setq company-tooltip-limit 7)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-flip-when-above nil)
  :bind
  ("C-<RET>" . company-complete))

(use-package company-quickhelp
  :init
  (company-quickhelp-mode))

(provide 'auto-completion)
