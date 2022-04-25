;;; pspiagicw-golang.el -*- lexical-binding: t; -*-

(setenv "GOPATH" "/home/pspiagicw/.local/share/go")

(use-package go-mode
  :config
  (add-hook 'go-mode-hook 'lsp))

(use-package ob-go)


(provide 'pspiagicw-golang)
