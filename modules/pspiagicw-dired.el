;;; pspiagicw-dired.el -*- lexical-binding: t; -*-

(use-package dired
  :ensure nil
  :config
  (setq dired-dwim-target t)
  (setq dired-listing-switches "-alh"))


(use-package dired-hide-dotfiles
  :hook
  (dired-mode . dired-hide-dotfiles-mode))


(general-define-key
 :keymaps 'dired-mode-map
 :states 'normal
 "h" 'dired-up-directory
 "l" 'dired-find-file
 "." 'dired-hide-dotfiles-mode
 "V" 'dired-mark
 "G" 'end-of-buffer
 "gg" 'beginning-of-buffer)

;; It is installed by lsp anyway , why don't we install it
(use-package treemacs)
(use-package treemacs-projectile
  :after (treemacs projectile))

(use-package treemacs-magit
  :after (treemacs magit))
(provide 'pspiagicw-dired)
