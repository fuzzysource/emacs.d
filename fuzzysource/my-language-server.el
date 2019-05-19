(use-package lsp-mode
  :commands lsp) 

(use-package lsp-ui
  :commands lsp-ui-mode)

(require 'lsp-ui)

(use-package company-lsp
  :commands lsp-company
  :init
  (push 'company-lsp company-backends))

(lsp-register-client
 (make-lsp-client :new-connection (lsp-stdio-connection "gopls")
                  :major-modes '(go-mode)
                  :server-id 'gopls))


(provide 'my-language-server)
