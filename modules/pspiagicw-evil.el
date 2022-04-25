;;; pspiagicw-evil.el -*- lexical-binding: t; -*-

(use-package undo-tree
  :config
  (setq undo-tree-history-directory-alist '(("." . "~/.config/emacs/undo")))
  (global-undo-tree-mode 1))

(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump t)
  (setq evil-want-C-w-delete t)
  (setq evil-want-C-u-delete t)
  (setq evil-want-minibuffer nil)
  (setq evil-undo-system nil)
  (define-key evil-insert-state-map (kbd "C-w") 'evil-delete-backward-word)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)
  (define-key minibuffer-mode-map (kbd "C-w") 'backward-kill-word)
  (define-key minibuffer-mode-map (kbd "C-h") 'delete-backward-char)

  (evil-mode 1))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package evil-surround
  :after evil
  :config
  (global-evil-surround-mode t))

(use-package evil-commentary
  :after evil
  :config
  (evil-commentary-mode 1))

(use-package evil-matchit
  :after evil
  :config
  (global-evil-matchit-mode 1))

(use-package evil-numbers
  :after evil)

(use-package evil-escape
  :init
  (setq-default evil-escape-key-sequence "jk")
  :config
  (evil-escape-mode))

(use-package evil-goggles
  :after evil
  :config
  (evil-goggles-mode))


(provide 'pspiagicw-evil)
