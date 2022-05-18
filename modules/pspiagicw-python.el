;;; pspiagicw-python.el -*- lexical-binding: t; -*-

(setq python-shell-interpreter "python")

(general-define-key
 :keymaps 'python-mode-map
 :states '(normal visual)
 :prefix "SPC"
 "mp" '(run-python :which-key "Open Python REPL")
 "mr" '(python-shell-send-region :which-key "Send region to REPL")
 "mb" '(python-shell-send-buffer :which-key "Send buffer to REPL")
 "mf" '(python-shell-send-defun :which-key "Send function to REPL")
 "ms" '(python-shell-send-statement :which-key "Send statement to REPL")
 "mi" '(:ignore t :which-key "Insert things")
 "mic" '(python-skeleton-class :which-key "Insert class skeleton")
 "mif" '(python-skeleton-for :which-key "Insert for skeleton")
 "mii" '(python-skeleton-import :which-key "Insert for skeleton")
 "mid" '(python-skeleton-def :which-key "Insert def skeleton")
 "mit" '(python-skeleton-try :which-key "Insert try skeleton")
 "miw" '(python-skeleton-while :which-key "Insert while skeleton")
 "mj" '(imenu :which-key "Jump to definition"))

;; (use-package lsp-pyright
;;   :hook (python-mode . lsp-pyright))

(provide 'pspiagicw-python)
