(use-package helm :ensure t)
(use-package helm-themes :ensure t)
(use-package helm-swoop :ensure t)
(use-package helm-projectile :ensure t)
(use-package helm-make :ensure t)
(use-package helm-gitignore :ensure t)
(use-package helm-descbinds :ensure t)
(use-package helm-company :ensure t)
(use-package helm-ag :ensure t)

(setq helm-ag-base-command "rg --vimgrep --no-heading --smart-case")

(provide 'my-helm)
