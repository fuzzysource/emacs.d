(add-to-list 'load-path "~/.emacs.d/bootstrap-deps")
(setq package-archives
      '(
        ("melpa" . "https://melpa.org/packages/")
        ("gnu-elpa" . "https://elpa.gnu.org/packages/")
        ("melpa-mirror" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/melpa/")
        ("org-mirror"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/org/")
        ("gnu-mirror"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/gnu/")
        ))
(package-initialize)

(require 'exec-path-from-shell)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))
(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

;; (use-package memoize
;;   :straight (memoize :host github :repo "skeeto/emacs-memoize")
;;   :init
;;   (require 'memoize))


(provide 'bootstrap)
