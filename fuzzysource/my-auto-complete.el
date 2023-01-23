(use-package company
  :init
  (global-company-mode)
  :config
  (setq company-idle-delay 0.2)
  (setq company-tooltip-limit 7)
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-flip-when-above nil)
  :bind
  (
   ("C-<return>" . company-complete)
   ("C-<SPC>" . company-files)
   )
  :config
  (setq company-dabbrev-downcase nil))

(use-package company-tabnine :ensure t
  ;; :init
  ;; (add-to-list 'company-backends #'company-tabnine)
  )

(use-package company-quickhelp
  :init
  (add-hook 'global-company-mode-hook #'company-quickhelp-mode))

;; (use-package company-tabnine :ensure t
;;   :init (add-to-list 'company-backends #'company-tabnine))

(provide 'my-auto-complete)
