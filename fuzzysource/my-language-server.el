(require 'lsp-mode)
(require 'lsp-ui)
;; optionally
(require 'company-lsp)
(require 'lsp-ui)
(require 'lsp-treemacs)
(require 'dap-mode)

(defun setup-dap-menu ()
  (define-key-after global-map
    [menu-bar dap-menu ]
    (cons "DAP" (make-sparse-keymap "dap-mode"))
    'tools)
  (define-key
    global-map
    [menu-bar dap-menu dab-disconnect]
    '("Cancel current debug session" . dap-disconnect))
  (define-key
    global-map
    [menu-bar dap-menu dab-step-out]
    '("Step out" . dap-step-out))
  (define-key
    global-map
    [menu-bar dap-menu dab-step-in]
    '("Step in" . dap-step-in))
  (define-key
    global-map
    [menu-bar dap-menu dab-continue]
    '("Continue to next breakpoint" . dap-continue))
  (define-key
    global-map
    [menu-bar dap-menu dab-next]
    '("Continue to next line" . dap-next))
  (define-key
    global-map
    [menu-bar dap-menu dab-breakpoint-toggle]
    '("DAP toggle breakpoints" . dap-breakpoint-toggle))
  (define-key
    global-map
    [menu-bar dap-menu dab-stop-thread]
    '("Stop thread" . dap-stop-thread))
  (define-key
    global-map
    [menu-bar dap-menu dab-switch-thread]
    '("Switch active thread" . dap-switch-thread))
  (define-key
    global-map
    [menu-bar dap-menu dab-debug-last]
    '("DAP debug (last session)" . dap-debug-last))
  (define-key
    global-map
    [menu-bar dap-menu dab-debug]
    '("DAP debug (new session)" . dap-debug))
  )

(setup-dap-menu)

;; (use-package dap-mode
;;   :init
;;   :bind
;;   ("<f7>" . dap-next)
;;   ("C-<f7>" . dap-continue)
;;   ("<f6>" . dap-step-in)
;;   ("C-<f6>" . dap-step-out)
;;   ("C-<return>" . dap-breakpoint-toggle))

(defun my-lsp-hook ()
  (add-to-list 'company-backends 'company-lsp))

(add-hook 'lsp-mode-hook 'my-lsp-hook)

(provide 'my-language-server)
