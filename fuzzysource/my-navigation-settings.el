;; File browsing and navigation
;; (use-package ranger)
(use-package counsel-etags
  :config
  (add-to-list 'counsel-etags-ignore-directories "__pycache__")
  (add-to-list 'counsel-etags-ignore-filenames "*.pyc")
  (add-to-list 'counsel-etags-ignore-filenames "*.json"))

(use-package neotree
  :config
  (setq projectile-switch-project-action 'neotree-projectile-action)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq neo-window-fixed-size nil)
  (setq neo-window-width 35))

(defun my/neotree-project-dir ()
  "Open NeoTree using the git root."
  (interactive)
  (let ((project-dir (projectile-project-root))
        (file-name (buffer-file-name)))
    (neotree-toggle)
    (if project-dir
        (if (neo-global--window-exists-p)
            (progn
              (neotree-dir project-dir)
              (neotree-find file-name)))
      (message "Could not find git project root."))))

(defun toggle-neotree-sidebar ()
  "Open side bar with neotree and ibuffer-sidebar."
  (interactive)
  (my/neotree-project-dir)
  ;; (ibuffer-sidebar-toggle-sidebar)
  )

(use-package imenu-list)
(use-package ivy
  :init
  (ivy-mode 1)
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (setq ivy-use-selectable-prompt t))

(use-package ibuffer-sidebar
  ;; :config
  ;; (ibuffer-sidebar-toggle-sidebar)
  ;; (setq ibuffer-sidebar-face `(:family "Source Sans Pro" :height 140))
)

(use-package sr-speedbar)

(use-package ace-window)

(use-package avy)

(use-package centaur-tabs
  :init
  (centaur-tabs-mode t)
  :config
  (setq centaur-tabs-height 32)
  (setq centaur-tabs-set-icons t)
  ;; (setq centaur-tabs-gray-out-icons 'buffer)
  (setq centaur-tabs-set-bar 'left)
  (setq centaur-tabs-set-modified-marker t)
  (setq centaur-tabs-modified-marker "o"))


(provide 'my-navigation-settings)
