;;; pspiagicw-dashboard.el -*- lexical-binding: t; -*-

;; (use-package dashboard
;;   :init
;;   (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
;;   ;; (setq dashboard-startup-banner "~/.config/emacs/banner.png")
;;   (setq dashboard-center-content t)
;;   (setq dashboard-show-shortcuts nil)
;;   (setq dashboard-set-heading-icons t)
;;   (setq dashboard-set-file-icons t)
;;   (setq dashboard-set-navigator t)
;;   (setq dashboard-projects-switch-function 'project-switch-project)
;;   (setq dashboard-projects-backend 'projectile)
;;   (setq dashboard-items '((recents  . 5)
;; 			  (projects . 5)
;; 			  ))
;;   :config
;;   (dashboard-setup-startup-hook))
;; (setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
;; (setq initial-scratch-message nil)
(provide 'pspiagicw-dashboard)
