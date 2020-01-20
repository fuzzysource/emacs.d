

(let ((default-directory  "~/.emacs.d/bootstrap/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'exec-path-from-shell)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'bootstrap)
