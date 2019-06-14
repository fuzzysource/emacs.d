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

  (highlight-indent-guides-mode)
  (dap-mode 1)
  (dap-ui-mode 1))

(defun my/python-jedi ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)
;; (add-hook 'python-mode-hook 'jedi:setup)
;; (add-hook 'python-mode-hook 'my/python-jedi)

(defun get-user-input (msg)
  (interactive)
  (read-string msg))


(dap-register-debug-template
 "Python :: Debug with all tests"
 (list :type "python"
       :args "-m pytest -sv tests"
       :cwd nil
       :target-module ""
       :request "launch"
       :name "Python :: Debug with all tests"))

(dap-register-debug-template
 "Python :: Debug with all marked tests"
 (list :type "python"
       :args "-m pytest -sv ./tests -m testit"
       :cwd nil
       :target-module ""
       :request "launch"
       :name "Python :: Debug with all tests"))

(defun get-python-project-target-module ()
  "Get the python-project-target-module."
  (if (not (boundp 'python-project-target-module))
      nil
    (symbol-value 'python-project-target-module)))

(defun setup-dap-mode ()

  (defun python-save-target-module ()
    (interactive)
    (setq-local python-project-target-module
                (get-user-input "Target module: "))
    (add-dir-local-variable nil 'python-project-target-module
                            python-project-target-module))

  (dap-register-debug-template
   "Python :: Debug this project"
   (list :type "python"
         :args nil
         :cwd nil
         :target-module (get-python-project-target-module)
         :request "launch"
         :name "Debug this project (python)"))
  (setq dap-python-executable
        (if projectile-project-root
            (concat "PYTHONPATH=" (projectile-project-root) " python3")
          "python3"))
  )

(add-hook 'dap-mode-hook 'setup-dap-mode)


(provide 'my-python-mode)
