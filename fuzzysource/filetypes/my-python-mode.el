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

(defun my/python-anaconda ()
  (electric-pair-mode)
  (anaconda-mode)
  (anaconda-eldoc-mode)
  (add-projectile-project-root-to-PYTHONPATH)
  (highlight-indent-guides-mode))



(use-package jedi
  :config
  (setq jedi:setup-keys t))

(use-package company-jedi)

(defun my/python-jedi ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-anaconda)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (add-hook 'python-mode-hook 'my/python-jedi)

(provide 'my-python-mode)
