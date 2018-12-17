(use-package ranger)

(use-package counsel-etags
  :config
  (add-to-list 'counsel-etags-ignore-directories "__pycache__")
  (add-to-list 'counsel-etags-ignore-filenames "*.pyc")
  (add-to-list 'counsel-etags-ignore-filenames "*.json"))

(use-package all-the-icons)

(use-package neotree
  :config
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


(use-package imenu-list)

(use-package ivy
  :init
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) "))

(provide 'my-navigation-settings)
