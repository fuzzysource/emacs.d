(use-package pyvenv)

(defun add-projectile-project-root-to-PYTHONPATH ()
  "Add current project root to the PYTHONPATH."
  (add-to-list 'python-shell-extra-pythonpaths
               (projectile-project-root)))

(use-package lsp-pyright
  :ensure t
  )

(defun my/python-mode-hook ()
  (require 'dap-python)
  (electric-pair-mode)
  (setq python-python-command "python")
  (setq python-shell-interpreter "python")

  ;;(anaconda-mode)
  ;;(anaconda-eldoc-mode)
  (add-projectile-project-root-to-PYTHONPATH)
  (highlight-indent-guides-mode)
  (dap-mode 1)
  (dap-ui-mode 1)
  (require 'lsp-pyright)
  (add-to-list 'lsp-enabled-clients 'pyright)
  (lsp-deferred)
  ;; (eglot-ensure)
  )

(add-hook 'python-mode-hook 'my/python-mode-hook)


(use-package pipenv
  :straight t
  :hook (python-mode . pipenv-mode)
  :init
  (setq
   pipenv-projectile-after-switch-function
   #'pipenv-projectile-after-switch-extended))

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

(provide 'my-python-mode)
