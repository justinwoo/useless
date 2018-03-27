(use-package evil :ensure t)
(use-package evil-visualstar :ensure t)
(use-package evil-visual-mark-mode :ensure t)
(use-package evil-tutor :ensure t)
(use-package evil-surround :ensure t)
(use-package evil-search-highlight-persist :ensure t)
(use-package evil-numbers :ensure t)
(use-package evil-nerd-commenter :ensure t)
(use-package evil-mc :ensure t)
(use-package evil-matchit :ensure t)
(use-package evil-magit :ensure t)
(use-package evil-lisp-state :ensure t)
(use-package evil-indent-plus :ensure t)
(use-package evil-iedit-state :ensure t)
(use-package evil-exchange :ensure t)
(use-package evil-escape :ensure t)
(use-package evil-ediff :ensure t)
(use-package evil-args :ensure t)
(use-package anzu :ensure t)
(use-package evil-anzu :ensure t)

(evil-mode 1)
(evil-escape-mode)

;; jumalauta who thought this is helpful
(fset 'evil-visual-update-x-selection 'ignore)

;; make ; do :
(define-key evil-normal-state-map (kbd ";") 'evil-ex)

;; escape key sequence
(setq-default evil-escape-key-sequence "kj")

;; prettier shit
; (evil-leader/set-key "mpm" 'prettier-js-mode)
; (evil-leader/set-key "mpp" 'prettier-js)
; (evil-leader/set-key "mps" (lambda ()
; 			     (prettier-js-mode)
; 			     (interactive)
; 			     (customize-set-variable 'prettier-js-command "prettier-standard")))
; (evil-leader/set-key "mpd" (lambda ()
; 			     (prettier-js-mode)
; 			     (interactive) (customize-set-variable 'prettier-js-command "prettier")))

(provide 'my-evil)
