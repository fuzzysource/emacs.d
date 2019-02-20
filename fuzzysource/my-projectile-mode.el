(use-package projectile
  :init
  (projectile-global-mode))

;; (require 'awesome-tab)
;; (awesome-tab-mode t)

(use-package counsel-projectile)
(counsel-projectile-mode 1)

;; (setq projectile-switch-project-action 'neotree-projectile-action)
(add-to-list 'projectile-globally-ignored-files "*.pyc")
(add-to-list 'projectile-globally-ignored-directories "__pycache__")
(add-to-list 'projectile-globally-ignored-directories ".tox" )
(add-to-list 'projectile-globally-ignored-directories "node_modules" )

(projectile-register-project-type 'webpack '("webpack.config.js")
                                  :compile "npx webpack"
                                  :run "npx webpack-dev-server"
                                  :test "npm test"
                                  :test-suffix ".test")

(provide 'my-projectile-mode)
