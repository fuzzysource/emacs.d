;; Setup el-get, use-package, quelpa-use-package
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(require 'el-get)
(el-get-bundle jwiegley/use-package)
(el-get-bundle quelpa/quelpa)
(el-get-bundle quelpa/quelpa-use-package)

(el-get 'sync)
(setq package-archives
       '(
         ("melpa" . "https://melpa.org/packages/")
         ("gnu-elpa" . "https://elpa.gnu.org/packages/")
         ("melpa-mirror" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/melpa/")
         ("org-mirror"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/org/")
         ("gnu-mirror"   . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/gnu/")
         ))

(package-initialize)
(require 'use-package)
(require 'quelpa)
(require 'quelpa-use-package)
(setq quelpa-update-melpa-p nil)
(setq use-package-ensure-function 'quelpa)
(setq use-package-always-ensure t)

(use-package auto-package-update
  :init
  (setq auto-package-update-delete-old-versions t)
  (setq auto-package-update-hide-results t)
  (auto-package-update-maybe))

(require 'install-packages)

(provide 'package-system)
