;;; pspiagicw-flutter.el -*- lexical-binding: t; -*-

(use-package dart-mode
  :config
  (add-hook 'dart-mode-hook 'lsp))

(use-package lsp-dart)

(provide 'pspiagicw-flutter)
