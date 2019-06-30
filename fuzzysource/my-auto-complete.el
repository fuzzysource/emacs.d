(require 'company)
(global-company-mode)
(setq company-idle-delay 0.5)
(setq company-tooltip-limit 7)
(setq company-minimum-prefix-length 2)
(setq company-tooltip-flip-when-above nil)

(require 'company-quickhelp)
(company-quickhelp-mode) 

(provide 'my-auto-complete)
