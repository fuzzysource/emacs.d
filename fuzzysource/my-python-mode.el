(use-package anaconda-mode)
(use-package realgud
  :config
  (setq realgud:pdb-command-name "python -m pdb"))
(use-package pyvenv)

(defun add-projectile-project-root-to-PYTHONPATH ()
  (add-to-list 'python-shell-extra-pythonpaths (projectile-project-root)))

(defun my/python-mode-startup ()
  (anaconda-mode)
  (anaconda-eldoc-mode)
  (add-projectile-project-root-to-PYTHONPATH)
  (highlight-indent-guides-mode))

(add-hook 'python-mode-hook 'my/python-mode-startup)
(provide 'my-python-mode)
