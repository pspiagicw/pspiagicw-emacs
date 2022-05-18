;;; pspiagicw-ui.el ;; -*- lexical-binding: t; -*-

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)
(setq tooltip-use-echo-area t)


(use-package doom-themes)

(setq modus-themes-bold-constructs t)
(setq modus-themes-italic-constructs t)
(setq modus-themes-links '(no-underline faint background))
(setq modus-themes-prompts '(background))
(setq modus-themes-lang-checkers '(straight-underline))
(setq modus-themes-org-blocks '(gray-background))
(setq modus-themes-completions '(moderate))
(setq modus-themes-syntax '(faint green-strings yellow-comments alt-syntax))

(use-package catppuccin-theme)

(use-package spacemacs-theme)

;; (setq default-frame-alist '((vertical-scroll-bars) (font . "JetBrains Mono 13" )))
(setq default-frame-alist '((vertical-scroll-bars)))

(load-theme 'doom-one t)


(defun pspiagicw-init-fonts (&optional reload)
  "Loads `pspiagicw-fonts'.'"
  )

(use-package evil-terminal-cursor-changer
  :config
  (evil-terminal-cursor-changer-activate))

(setq pspiagicw-default-font (font-spec :family "JetBrains Mono" :size 15))

;; pspiagicw's emacs font
;; (defvar pspiagicw-default-font nil
;;   "The default font to use.")
;; (defvar pspiagicw-variable-pitch-font nil
;;   "The default font to use for variable-pitch text")

;; (defvar pspiagicw-serif-font nil
;;   "The default font to use for the `fixed-pitch-serif' font.")

;; (defun pspiagicw-init-fonts ()
;;   (dolist (map '((default . ,pspiagicw-default-font)
;;                  (fixed-pitch . ,pspiagicw-default-font)
;;                  (fixed-pitch-serif . ,pspiagicw-serif-font)
;;                  (variable-pitch . ,pspiagicw-variable-pitch-font)))
;;     (when-let* ((face (car map))
;;                 (font (cdr map)))
;;       (dolist (frame (frame-list))
;;         (when (display-multi-font-p frame)
;;           (set-face-attribute face frame
;;                               :width 'normal :weight 'normal
;;                               :slant 'normal :font font )))))
;;   )
(add-variable-watcher 'pspiagicw-default-font #'pspiagicw/doom-font-change)

(defun pspiagicw/doom-font-change (name value &optional operation where)
  (set-face-attribute 'default nil :width 'normal :weight 'normal :slant 'normal :font value))

;; (add-hook 'after-init-hook (pspiagicw/doom-font-change nil pspiagicw-default-font nil nil))
;; (pspiagicw/doom-font-change nil pspiagicw-default-font nil nil)
;; (set-face-attribute 'default nil :width 'normal :weight 'normal :slant 'normal :font pspiagicw-default-font)

(provide 'pspiagicw-ui)

