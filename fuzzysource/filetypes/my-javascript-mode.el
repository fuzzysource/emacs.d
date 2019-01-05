(use-package indium)

(use-package js2-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js-mode))
  (add-hook 'js-mode-hook 'js2-minor-mode)
  :config
  (setq-default indent-tabs-mode nil)
  (setq js2-mode-show-parse-errors nil)
  (setq js2-mode-show-strict-warnings nil)
  (setq js2-basic-offset 2)
  (setq js-indent-level 2))

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
                (or (buffer-file-name) default-directory)
                "node_modules"))
         (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)


(use-package company-tern)
(add-to-list 'company-backends 'company-tern)
(add-hook 'js2-mode-hook 'tern-mode)

(defun start-chrome-headless ()
  (interactive)
  (make-process
   :name "Chrome Headless"
   :buffer "*Chrome Headless*"
   :command '("chrome" "--headless" "--remote-debugging-port=9222")))

(provide 'my-javascript-mode)
