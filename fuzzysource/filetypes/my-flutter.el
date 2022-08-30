(use-package lsp-mode :ensure t)
(use-package lsp-dart
  :ensure t
  :hook (dart-mode . lsp)
  :init
  (setq lsp-dart-sdk-dir "/opt/flutter/bin/cache/dart-sdk/")
  (with-eval-after-load "lsp-mode"
    (add-to-list 'lsp-enabled-clients 'dart_analysis_server)))

(provide 'my-flutter)
