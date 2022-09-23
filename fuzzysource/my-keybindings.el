;; super keybindings

(global-set-key (kbd "s-r") 'popup-kill-ring)

;; buffer, windows, frames
(global-set-key (kbd "s-q") 'kill-buffer-and-window)

;; sr-speedbar
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

(global-set-key (kbd "M-2") 'revert-buffer)
(global-set-key (kbd "M-3") 'save-buffer)
(global-set-key (kbd "M-q") 'fill-paragraph)
(global-set-key (kbd "C-x /") 'comment-or-uncomment-region)
(global-set-key (kbd "<f11>") 'linum-mode)

(define-key evil-normal-state-map ";" 'comment-line)

;; neotree
;; (global-set-key (kbd "<f8>") 'toggle-neotree-sidebar)


;; origami
(global-set-key (kbd "s-f") 'origami-toggle-node)
(global-set-key (kbd "s-F") 'origami-toggle-all-nodes)


;; buffer move
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)


;; imenu-list
(global-set-key (kbd "C-'") #'imenu-list-smart-toggle)


;;ivy
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)


;; projectile
(eval-after-load 'projectile
  (progn
    (define-key projectile-mode-map (kbd "<f9>") 'projectile-command-map)))
;; (global-set-key (kbd "<f9>") 'projectile-grep)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)


;; company mode

(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "<f1>")
       'company-quickhelp-manual-begin)
     (define-key company-active-map (kbd "<tab>")
       'company-complete-common-or-cycle)))


;; move text
(global-set-key [(meta shift up)]  'move-text-up)
(global-set-key [(meta shift down)] 'move-text-down)


;; mac os keybindings
;; command for control
;; option for meta
;; control for super

;; (when (eq system-type 'darwin)
;;   (setq mac-option-modifier 'meta)
;;   (setq mac-command-modifier 'control)
;;   (setq mac-control-modifier 'super))

;; key binding for avy

(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-.") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-w") 'ace-window)

;; python-mode
(defun my/anaconda-mode-keybindings ()
  (local-set-key (kbd "s-g") 'anaconda-mode-find-definitions))

(add-hook 'anaconda-mode-hook 'my/anaconda-mode-keybindings)

;; ibuffer keybindings
(define-key ibuffer-name-map (kbd "<mouse-1>") 'ibuffer-mouse-visit-buffer)
(define-key ibuffer-name-map (kbd "<mouse-2>") 'ibuffer-mouse-toggle-mark)



;; multiple-cursors - my-common-settings.el
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-beginnings-of-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mvark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; awesome-tab's keybindings

(global-set-key (kbd "<C-tab>") 'awesome-tab-forward)
(global-set-key (kbd "C-`") 'awesome-tab-backward)

;; dap mode
(define-key dap-mode-map (kbd "<f7>") 'dap-next)
(define-key dap-mode-map (kbd "C-<f7>") 'dap-continue)
(define-key dap-mode-map (kbd "<f6>") 'dap-step-in)
(define-key dap-mode-map (kbd "C-<f6>") 'dap-step-out)
;; (define-key dap-mode-map (kbd "C-<return>") 'dap-breakpoint-toggle)

(global-set-key (kbd "<f5>") 'revert-buffer)
(global-set-key (kbd "<f12>") 'golden-ratio)
(global-set-key (kbd "<f3>") 'switch-to-buffer)



(provide 'my-keybindings)
