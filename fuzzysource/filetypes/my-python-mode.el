(use-package pyvenv)

(use-package anaconda-mode)


(use-package company-anaconda
  :config
  (eval-after-load "company"
    '(add-to-list 'company-backends '(company-anaconda :with company-capf))))


(use-package realgud
  :config
  (setq realgud:pdb-command-name "python -m pdb"))


(defun add-projectile-project-root-to-PYTHONPATH ()
  (add-to-list 'python-shell-extra-pythonpaths (projectile-project-root)))


(defun my/python-mode-hook ()
  (electric-pair-mode)
  (anaconda-mode)
  (anaconda-eldoc-mode)
  (add-projectile-project-root-to-PYTHONPATH)
  (setq-local flycheck-python-flake8-executable "python3")
  (highlight-indent-guides-mode))


(defun my/python-jedi ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (add-hook 'python-mode-hook 'my/python-jedi)

(provide 'my-python-mode)
