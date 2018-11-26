(use-package ranger)

(use-package counsel-etags
  :config
  (add-to-list 'counsel-etags-ignore-directories "__pycache__")
  (add-to-list 'counsel-etags-ignore-filenames "*.pyc")
  (add-to-list 'counsel-etags-ignore-filenames "*.json"))

(provide 'my-browsing-mode)
