(use-package sr-speedbar
  :init
  (global-set-key (kbd "S-s") 'sr-speedbar-toggle))

(use-package all-the-icons)

(use-package neotree
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  (setq neo-window-fixed-size nil)
  (setq neo-window-width 35))

(defun neotree-project-dir ()
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

(global-set-key (kbd "<f8>") 'neotree-project-dir)

(use-package ibuffer-sidebar
  :commands (ibuffer-sidebar-toggle-sidebar)
  :bind ("C-x C-b" . ibuffer-sidebar-toggle-sidebar))

(use-package imenu-list
  :init
  (global-set-key (kbd "C-'") #'imenu-list-smart-toggle))

(provide 'my-sidebar-mode)
