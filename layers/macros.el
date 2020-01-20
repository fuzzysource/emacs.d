(defmacro bind-evil-normal (key action)
  `(evil-global-set-key 'normal (kbd ,key) ,action))

(defmacro bind-evil-visual (key action)
  `(evil-global-set-key 'visual (kbd ,key) ,action))

(defmacro bind-global (key action)
  '(global-set-key (kbd ,key) ,action))

(provide 'macros)
