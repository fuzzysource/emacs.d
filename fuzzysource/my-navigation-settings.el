(require 'counsel-etags)
(add-to-list 'counsel-etags-ignore-directories "__pycache__")
(add-to-list 'counsel-etags-ignore-filenames "*.pyc")
(add-to-list 'counsel-etags-ignore-filenames "*.json")


(require 'neotree)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-fixed-size nil)
(setq neo-window-width 35)

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

(require 'imenu-list)

(require 'ivy)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(setq ivy-use-selectable-prompt t)


(require 'avy)

(require 'ace-window)

(require 'ibuffer-sidebar)
;; (ibuffer-sidebar-toggle-sidebar)
;; (setq ibuffer-sidebar-face `(:family "Source Sans Pro" :height 140))

(defun toggle-neotree-sidebar ()
  "Open side bar with neotree and ibuffer-sidebar."
  (interactive)
  (my/neotree-project-dir)
  ;; (ibuffer-sidebar-toggle-sidebar)
  )


(require 'sr-speedbar)

(require 'centaur-tabs)
(centaur-tabs-mode t)
(global-set-key (kbd "C-<prior>")  'centaur-tabs-backward)
(global-set-key (kbd "C-<next>") 'centaur-tabs-forward)
(setq centaur-tabs-height 32)
(setq centaur-tabs-set-icons t)
;; (setq centaur-tabs-gray-out-icons 'buffer)
(setq centaur-tabs-set-bar 'left)
(setq centaur-tabs-set-modified-marker t)
(setq centaur-tabs-modified-marker "o")

(provide 'my-navigation-settings)
