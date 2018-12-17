(use-package company
  :init
  (global-company-mode)
  :config
  (setq company-idle-delay 0.5)
  (setq company-tooltip-limit 7)
  (setq company-minimum-prefix-length 2)
  (setq company-tooltip-flip-when-above nil))

(use-package company-quickhelp
  :init
  (company-quickhelp-mode)) 

;; (use-package auto-complete
;;   :init
;;   (ac-config-default))

(provide 'my-auto-complete)
