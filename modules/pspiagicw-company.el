;;; pspiagicw-company.el -*- lexical-binding: t; -*-

(use-package company
  :config
  (company-tng-configure-default)
  (setq company-minimum-prefix-length 1)
  (setq company-idle-delay 0.1)
  (setq company-mode-selection-wrap-around t)
  (setq company-backends '((company-capf) (company-files))))


(general-define-key
 :keymaps 'company-active-map
 "C-w" 'backward-kill-word
 "C-h" 'backward-delete-char)

(provide 'pspiagicw-company)
