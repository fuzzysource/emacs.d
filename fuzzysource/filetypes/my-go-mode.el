(use-package go-mode
  :config
    (setq indent-tabs-mode nil)
  (setq tab-width 4)
  (setq flycheck-checker 'go-gofmt))

(use-package company-go
  :hook go-mode
  :config
  (push 'company-go company-backends))

(projectile-register-project-type 'go-mod '("go.mod")
                  :compile "go build"
                  :test "go test"
                  :run "go run"
                  :test-suffix "_test.go")

(provide 'my-go-mode)
