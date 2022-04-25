;;; pspiagicw-use-package.el -*- lexical-binding: t; -*-

(dolist (package '(use-package))
  (unless (package-installed-p package)
    (package-install package)))

(use-package use-package
  :ensure t
  :config
  (setq use-package-always-ensure t))


(provide 'pspiagicw-use-package)
