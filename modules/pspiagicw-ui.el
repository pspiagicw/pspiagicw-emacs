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
(use-package doom-modeline
  :hook (after-init . doom-modeline-mode)
  :custom
  (doom-modeline-icon t)
  (doom-modeline-project-detection 'project.el)
  (doom-modeline-buffer-state-icon t)
  (doom-modeline-major-mode-color-icon t)
  (doom-modeline-buffer-modification-icon t)
  (doom-modeline-buffer-file-name-style 'file-name))


(setq default-frame-alist '((vertical-scroll-bars) (font . "JetBrains Mono 13")))

(load-theme 'doom-dracula t)


(use-package evil-terminal-cursor-changer
  :config
  (evil-terminal-cursor-changer-activate))
(provide 'pspiagicw-ui)

