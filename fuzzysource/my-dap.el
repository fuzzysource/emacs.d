
(use-package dap-mode
  :bind
  ("<f7>" . dap-next)
  ("C-<f7>" . dap-continue)
  ("<f6>" . dap-step-in)
  ("C-<f6>" . dap-step-out)
  ("C-<return>" . dap-breakpoint-toggle)
  :hook (
         (dap-mode . setup-dap-menu)
         (dap-mode . dap-ui-mode)))

(defun setup-dap-menu ()
  (define-key-after global-map
    [menu-bar dap-menu ]
    (cons "DAP" (make-sparse-keymap "dap-mode"))
    'tools)
  (define-key
    global-map
    [menu-bar dap-menu dab-disconnect]
    '("Cancel all debug sessions" . dap-delete-all-sessions))
  (define-key
    global-map
    [menu-bar dap-menu dab-disconnect]
    '("Cancel current debug session" . dap-delete-session))
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

(provide 'my-dap)
