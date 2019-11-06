(use-package pyvenv)

(use-package anaconda-mode)

(use-package company-anaconda
  :config
  (eval-after-load "company"
    '(add-to-list 'company-backends
                  '(company-anaconda :with company-capf))))

(defun add-projectile-project-root-to-PYTHONPATH ()
  "Add current project root to the PYTHONPATH."
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

(add-hook 'python-mode-hook 'my/python-mode-hook)

;; (dap-register-debug-template
;;  "Python :: Debug with all tests"
;;  (list :type "python"
;;        :args "-m pytest -sv tests"
;;        :cwd nil
;;        :target-module ""
;;        :request "launch"
;;        :name "Python :: Debug with all tests"))

;; (dap-register-debug-template
;;  "Python :: Debug with all marked tests"
;;   (list :type "python"
;;         :args "-m pytest -sv ./tests -m testit"
;;         :cwd nil
;;         :target-module ""
;;         :request "launch"
;;         :name "Python :: Debug with all tests"))


;;  (defun setup-dap-mode ()
;;    (dap-register-debug-template
;;     "Python :: Debug this project"
;;     (list :type "python"
;;           :args nil
;;           :cwd nil
;;           :target-module (symbol-value 'target-module)
;;           :request "launch"
;;           :name "Debug this project (python)"))
;;    (setq dap-python-executable
;;          (if (projectile-project-root)
;;              (concat "PYTHONPATH=" (projectile-project-root) " python3")
;;            "python3"))
;;   )

(projectile-register-project-type
 'tox-project '("tox.ini")
 :compile  "tox -e build"
 :test "tox -e pytest"
 :run "tox -e run"
 :test-prefix "test_")

(provide 'my-python-mode)
