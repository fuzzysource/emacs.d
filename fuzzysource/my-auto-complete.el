(use-package company
  :init
  (global-company-mode)
  :config
  (setq company-idle-delay 0.5)
  (setq company-tooltip-limit 10)
  (setq company-minimum-prefix-length 2)
  (setq company-tooltip-flip-when-above t))

(use-package company-quickhelp
  :init
  (company-quickhelp-mode)
  (eval-after-load 'company
    '(define-key company-active-map (kbd "C-c h") #'company-quickhelp-manual-begin)))

(provide 'my-auto-complete)
