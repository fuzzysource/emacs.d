(use-package go-mode
  :init
  :hook (
         (go-mode . lsp-deferred)
         )
  :config
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
  (setq flycheck-checker 'go-gofmt)
  (dap-mode)
  (require 'dap-go)
  (dap-go-setup)
  (add-to-list 'lsp-enabled-clients 'gopls)
  (add-to-list 'lsp-enabled-clients 'gopls-remote)
  (lsp-deferred)
  )

(use-package go-add-tags
  :straight (go-add-tags :host github :repo "syohex/emacs-go-add-tags"))

;; (use-package company-go
;;   :hook go-mode
;;   :config
;;   (push 'company-go company-backends))

(projectile-register-project-type 'go-mod '("go.mod")
                                  :compile "go build"
                                  :test "go test"
                                  :run "go run"
                                  :test-suffix "_test.go")

(provide 'my-go-mode)
