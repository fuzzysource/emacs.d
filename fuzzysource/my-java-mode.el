(use-package meghanada
  :init
  (cond
   ((eq system-type 'windows-nt)
    (setq meghanada-java-path (expand-file-name "bin/java.exe" (getenv "JAVA_HOME")))
    (setq meghanada-maven-path "mvn.cmd"))
   (t
    (setq meghanada-java-path "java")
    (setq meghanada-maven-path "mvn")))
  
  :config
  (setq c-basic-offset 4))

(add-hook 'java-mode-hook 'meghanada-mode)

(use-package groovy-mode
  :init (add-hook 'groovy-mode-hoke 'meghanada-mode))

(provide 'my-java-mode)
