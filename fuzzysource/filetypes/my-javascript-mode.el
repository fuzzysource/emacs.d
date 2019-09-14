(require 'prettier-js)

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
;; (defun my/use-eslint-from-node-modules ()
;;   (let* ((root (locate-dominating-file
;;                 (or (buffer-file-name) default-directory)
;;                 "node_modules"))
;;          (eslint (and root
;;                       (expand-file-name "node_modules/eslint/bin/eslint.js"
;;                                         root))))
;;     (when (and eslint (file-executable-p eslint))
;;       (setq-local flycheck-javascript-eslint-executable eslint))))

;; (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
;; (add-to-list 'company-backends 'company-tern)

;; (defun start-chrome-headless ()
;;   (interactive)
;;   (make-process
;;    :name "Chrome Headless"
;;    :buffer "*Chrome Headless*"
;;    :command '("chrome" "--headless" "--remote-debugging-port=9222")))

(require 'tide)
(defun my-typescript-hook ()
  (setq typescript-indent-level 2)
  (prettier-js-mode 1)
  (tide-setup)
  (tide-hl-identifier-mode)
  )

(add-hook 'typescript-mode-hook 'my-typescript-hook)
(provide 'my-javascript-mode)
