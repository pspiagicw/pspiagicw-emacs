;;; pspiagicw-completion.el -*- lexical-binding: t; -*-
(use-package vertico
  :hook (after-init . vertico-mode)
  :bind (:map vertico-map
              ("C-j" . vertico-next)
              ("C-k" . vertico-previous)
              ("C-w" . backward-kill-word)
              ("C-h" . delete-backward-char)))
(use-package marginalia
  :config
  (marginalia-mode 1))

(use-package consult)

(use-package orderless
  :config
  (setq completion-styles '(orderless)))

(provide 'pspiagicw-completion)
