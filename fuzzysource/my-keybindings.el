(global-set-key (kbd "M-2") 'revert-buffer)
(global-set-key (kbd "M-q") 'fill-paragraph)
(global-set-key (kbd "C-x /") 'comment-or-uncomment-region)
(global-set-key (kbd "<f11>") 'linum-mode)

(define-key evil-normal-state-map ";" 'comment-line)

;; neotree
(global-set-key (kbd "<f8>") 'my/toggle-sidebar)


;; origami
(global-set-key (kbd "<f3>") 'origami-toggle-node)
(global-set-key (kbd "<M-f3>") 'origami-toggle-all-nodes)


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
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)


;; awesome-tab
(global-set-key (kbd "C-c t g") 'awesome-tab-switch-group)
(global-set-key (kbd "M-j") 'awesome-tab-backward-tab)
(global-set-key (kbd "M-k") 'awesome-tab-forward-tab)


;; projectile
(require 'projectile)
(global-set-key (kbd "<f9>") 'projectile-grep)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; magit
(global-set-key (kbd "C-x g") 'magit-status)


;; company mode

(eval-after-load 'company
  '(progn
     (define-key company-active-map (kbd "<f1>") 'company-quickhelp-manual-begin)
     (define-key company-active-map (kbd "<tab>") 'company-complete-common-or-cycle)))


;; move text
(global-set-key [(meta shift up)]  'move-text-up)
(global-set-key [(meta shift down)] 'move-text-down)


;; mac os keybindings
;; command for control
;; option for meta
;; control for super

(when (eq system-type 'darwin)
  (setq mac-option-modifier 'meta)
  (setq mac-command-modifier 'control)
  (setq mac-control-modifier 'super))

;; key binding for avy

(global-set-key (kbd "C-c j") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-.") 'avy-goto-word-or-subword-1)
(global-set-key (kbd "s-w") 'ace-window)


(provide 'my-keybindings)
