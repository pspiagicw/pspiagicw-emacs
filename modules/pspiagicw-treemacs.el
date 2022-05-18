;;; pspiagicw-treemacs.el -*- lexical-binding: t; -*-

(use-package treemacs
  :init
  (setq treemacs-follow-after-init t
        treemacs-is-never-other-window t
        treemacs-sorting 'alphabetic-case-insensitive-asc
        treemacs-persist-file (concat doom-cache-dir "treemacs-persist")
        treemacs-last-error-persist-file (concat doom-cache-dir "treemacs-last-error-persist"))
  
  :config
  (treemacs-follow-mode -1))

(use-package treemacs-evil)

(use-package treemacs-magit)

(provide 'pspiagicw-treemacs)
;;; pspiagicw-treemacs.el ends here
