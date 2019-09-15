(use-package company-go)

(projectile-register-project-type 'go-mod '("go.mod")
                  :compile "go build"
                  :test "go test"
                  :run "go run"
                  :test-suffix "_test.go")

(defun my-go-settings ()
  "My custom setting in go mode."f
  (setq indent-tabs-mode nil)
  (setq tab-width 4)
  (setq flycheck-checker 'go-gofmt)
  (push 'company-go company-backends))

(add-hook 'go-mode-hook 'my-go-settings)

(provide 'my-go-mode)
