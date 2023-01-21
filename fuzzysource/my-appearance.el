(use-package doom-modeline
  :straight t
  :init
  (doom-modeline-mode 1))

(use-package sublime-themes
  :straight t)

(use-package doom-themes
  :straight t
  :init
  (doom-themes-org-config)
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))

(use-package grayscale-theme
  :straight t)

(use-package dracula-theme
  :straight t)

(use-package material-theme
  :straight (material-theme :host github :repo "cpaulik/emacs-material-theme"))

(use-package golden-ratio
  :straight (golden-ratio :host github :repo "roman/golden-ratio.el"))

(use-package all-the-icons
  :straight t)

(use-package nord-theme
  :straight t)

;; (load-theme 'doom-wilmersdorf t)

(load-theme 'grayscale t)

;; (load-theme 'doom-challenger-deep t)

;; (load-theme 'doom-acario-light t)

;; (load-theme 'nord t)

;; (load-theme 'doom-dracula t)

;; (load-theme 'material t)

(use-package ligature
  :straight (ligature :host github :repo "mickeynp/ligature.el")
  :config
  ;; Enable the "www" ligature in every possible major mode
  (ligature-set-ligatures 't '("www"))
  ;; Enable traditional ligature support in eww-mode, if the
  ;; `variable-pitch' face supports it
  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
  ;; Enable all Cascadia Code ligatures in programming modes
  (ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                       "\\\\" "://"))
  ;; Enables ligature checks globally in all buffers. You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))

;; (add-to-list 'default-frame-alist '(font . "Cascadia Mono-12"))
;; (add-to-list 'default-frame-alist '(font . "Victor Mono-13"))
;; (add-to-list 'default-frame-alist '(font . "Fantasque Sans Mono-13"))
(add-to-list 'default-frame-alist '(font . "Iosevka-14"))

;; Enable prettify-symbols-mode globally
;; (global-prettify-symbols-mode)

(provide 'my-appearance)
