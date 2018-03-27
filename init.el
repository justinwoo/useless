(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file)

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(menu-bar-mode -1) 
(toggle-scroll-bar -1) 
(tool-bar-mode -1) 

(prefer-coding-system 'utf-8)
(setq buffer-file-coding-system 'utf-8)

(require 'package)

(setq package-archives
      (append '(("melpa" . "https://melpa.org/packages/"))
              package-archives))

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(setq package-list '(company
                     company-ghci
                     dash
                     flycheck
                     hcl-mode
                     js2-mode
                     json-mode
                     magit
                     markdown-mode
                     projectile
                     quelpa
                     racer
                     rainbow-mode
                     rainbow-delimiters
                     scss-mode
                     shakespeare-mode
                     undo-tree
		     which-key
                     yaml-mode
                     yasnippet))

(dolist (package package-list)
(unless (package-installed-p package)
  (package-install package)))

;; quelpa
(setq quelpa-update-melpa-p nil)
(require 'quelpa-use-package)

;; im fucking blind
(use-package solarized-theme
  :quelpa (solarized-theme :fetcher github :repo "justinwoo/solarized-emacs"))

(add-to-list 'load-path (expand-file-name "src" user-emacs-directory))
(require 'my-backups)
(require 'my-utils)
(require 'my-helm)
(require 'my-magit)
(require 'my-evil)

;; extra config
;; (evil-leader/set-key "/" 'spacemacs/helm-project-do-ag)
;; (evil-leader/set-key "*" 'spacemacs/helm-project-do-ag-region-or-symbol)

;; company
(use-package company :ensure t)
(global-company-mode)
;; jesus christ delay popups are annoying
(setq company-idle-delay 'nil)
;; use some company complete
(global-set-key (kbd "C-SPC") 'company-complete)
(define-key evil-insert-state-map (kbd "<tab>") 'company-complete-common)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(autoload 'flycheck-haskell-setup "flycheck-haskell")

;; rainbow
(rainbow-delimiters-mode)

;; javascript
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . js2-mode))
(setq js-indent-level 2)

;; json
(add-to-list 'auto-mode-alist '("\\.json\\'\\|\\.jshintrc\\'" . json-mode))

;; SCSS
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq scss-compile-at-save nil)

;; Undo Tree
(global-undo-tree-mode)

;; yaml-mode
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; yasnippet
(setq yas-snippet-dirs '("~/.emacs.d/yasnippet/snippets"))
(yas-global-mode 1)
(define-key yas-keymap (kbd "<return>") 'yas/exit-all-snippets)

(custom-set-faces
  '(default ((t (:height 180 :family "Ubuntu Mono")))))

;; server
(require 'server)
(unless (server-running-p)
  (server-start))

;; company
(use-package company :ensure t)
(global-company-mode)
;; jesus christ delay popups are annoying
(setq company-idle-delay 'nil)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(autoload 'flycheck-haskell-setup "flycheck-haskell")

;; rainbow
(rainbow-delimiters-mode)

;; javascript
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . js2-mode))
(setq js-indent-level 2)

;; json
(add-to-list 'auto-mode-alist '("\\.json\\'\\|\\.jshintrc\\'" . json-mode))

;; SCSS
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(setq scss-compile-at-save nil)

;; Undo Tree
(global-undo-tree-mode)

;; yaml-mode
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

;; yasnippet
(setq yas-snippet-dirs '("~/.emacs.d/yasnippet/snippets"))
(yas-global-mode 1)
(define-key yas-keymap (kbd "<return>") 'yas/exit-all-snippets)

(custom-set-faces
  '(default ((t (:height 180 :family "Ubuntu Mono")))))

(linum-mode)

;; server
(require 'server)
(unless (server-running-p)
  (server-start))
