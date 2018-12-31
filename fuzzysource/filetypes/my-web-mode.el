(use-package web-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.htm\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode)))

(use-package emmet-mode)


(eval-after-load 'company-etags
  '(progn (add-to-list 'company-etags-modes 'web-mode)))

(setq company-etags-everywhere
      '(web-mode js-jsx-mode))

(defun my-web-mode-setup ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (emmet-mode)
  (emmet-preview-mode))

(add-hook 'web-mode-hook 'my-web-mode-setup)

(defun my-css-mode-setup ()
  (setq css-indent-offset 2)
  (emmet-mode)
  (emmet-preview-mode))

(add-hook 'css-mode-hook 'my-css-mode-setup)


(provide 'my-web-mode)
