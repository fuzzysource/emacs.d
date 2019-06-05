(use-package pyvenv)

(use-package anaconda-mode)

(use-package company-anaconda
  :config
  (eval-after-load "company"
    '(add-to-list 'company-backends
                  '(company-anaconda :with company-capf))))

(defun add-projectile-project-root-to-PYTHONPATH ()
  (add-to-list 'python-shell-extra-pythonpaths
               (projectile-project-root)))

(require 'dap-python)
(defun my/python-mode-hook ()
  (electric-pair-mode)
  (anaconda-mode)
  (anaconda-eldoc-mode)
  (add-projectile-project-root-to-PYTHONPATH)
  (setq dap-python-executable
        (concat "PYTHONPATH=" (projectile-project-root) " python3"))
  (highlight-indent-guides-mode)
  (dap-mode 1)
  (dap-ui-mode 1))

(defun my/python-jedi ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (add-hook 'python-mode-hook 'my/python-jedi)


(dap-register-debug-template "Python :: Debug with all tests"
  (list :type "python"
        :args "-m pytest -sv tests"
        :cwd nil
        :target-module ""
        :request "launch"
        :name "Python :: Debug with all tests"))


(dap-register-debug-template "Python :: Debug with all marked tests"
  (list :type "python"
        :args "-m pytest -sv ./tests -m testit"
        :cwd nil
        :target-module ""
        :request "launch"
        :name "Python :: Debug with all tests"))


(provide 'my-python-mode)
