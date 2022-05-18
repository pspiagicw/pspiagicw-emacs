;;; pspiagicw-modeline.el -*- lexical-binding: t; -*-

(use-package doom-modeline
  :init
  (unless after-init-time
    (setq-default mode-line-format nil))
  :hook ((doom-modeline-mode . size-indication-mode)
         (doom-modeline-mode . column-number-mode)
         (after-init . doom-modeline-mode))
  
  :custom
  (doom-modeline-icon t)
  (doom-modeline-project-detection 'project.el)
  (doom-modeline-buffer-state-icon t)
  (doom-modeline-major-mode-color-icon t)
  (doom-modeline-buffer-modification-icon t)
  (doom-modeline-buffer-file-name-style 'file-name))

(use-package anzu
  :commands (isearch-mode))

(use-package evil-anzu
  :commands (evil-ex-start-search evil-ex-start-word-search evil-ex-search-activate-highlight)
  :config
  (global-anzu-mode +1))

(provide 'pspiagicw-modeline)      
;;; pspiagicw-modeline.el ends here
