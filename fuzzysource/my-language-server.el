(el-get-bundle emacs-lsp/lsp-mode)
(el-get-bundle emacs-lsp/lsp-ui)
(el-get-bundle tigersoldier/company-lsp)

(require 'lsp-mode)
(require 'lsp-clients)
(require 'lsp-ui)
(require 'company-lsp)

(defun my-lsp-hook ()
  (add-to-list 'company-backends 'company-lsp))

(add-hook 'lsp-mode-hook 'my-lsp-hook)

(provide 'my-language-server)
