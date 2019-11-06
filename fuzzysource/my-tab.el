
(use-package centaur-tabs
  :init
  (centaur-tabs-mode t)
  :config
  (setq centaur-tabs-height 32)
  (setq centaur-tabs-set-icons t)
  ;; (setq centaur-tabs-gray-out-icons 'buffer)
  (setq centaur-tabs-set-bar 'left)
  (setq centaur-tabs-set-modified-marker t)
  (setq centaur-tabs-modified-marker "o")
  (setq centaur-tabs-show-navigation-buttons t))

(provide 'my-tab)
