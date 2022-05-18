;;; pspiagicw-programming.el -*- lexical-binding: t; -*-


(electric-pair-mode)
(electric-indent-mode)

(setq compilation-ask-about-save nil)
(use-package flycheck)

(use-package dumb-jump
  :config
  (add-hook 'xref-backend-functions #'dumb-jump-xref-activate))

;; (use-package tempel
  ;; :bind ("M-." . tempel-insert)
  ;; :init
  ;; (defun tempel-setup-capf ()
  ;;   (add-hook 'completion-at-point-functions #'tempel-expand -1 'local))

  ;; (add-hook 'prog-mode-hook 'tempel-setup-capf))

;; (general-define-key
;;  :mode 'insert
;;  :keymaps 'tempel-map
;;  "C-n" '(tempel-next)
;;  "C-p" '(tempel-previous))


(use-package quickrun)
(provide 'pspiagicw-programming)

