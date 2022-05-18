;;; pspiagicw-lsp.el -*- lexical-binding: t; -*-

(use-package lsp-mode
  ;; straight t
  :commands (lsp lsp-deferred)
  :config
  (setq lsp-modeline-diagnostics-scope :workspace)
  (setq lsp-headerline-breadcrumb-enable nil)
  (setq lsp-eldoc-enable-hover nil)
  (setq lsp-signature-auto-activate nil)
  (setq lsp-lens-enable nil)
  (setq lsp-modeline-code-actions-enable nil)
  (setq lsp-modeline-diagnostics-enable nil)
  (setq lsp-signature-render-documentation nil)
  (setq read-process-output-max (* 2000 2000))
  (setq lsp-idle-delay 1.0)
  (setq lsp-signature-doc-lines 3))

(use-package lsp-ui
  :config
  (setq lsp-ui-doc-enable t)
  (setq lsp-ui-doc-show-with-cursor t)
  (setq lsp-ui-doc-delay 1)
  (setq lsp-ui-doc-show-with-mouse nil)
  (setq lsp-ui-sideline-enable nil)
  (setq lsp-ui-sideline-show-hover nil)
  (setq lsp-ui-sideline-show-diagnostics nil)
  (setq lsp-ui-sideline-show-code-actions nil)
  (lsp-ui-doc-mode 1))

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "ll" '(lsp :which-key "Start/Connect with LSP Server")
 "li" '(lsp-organize-imports :which-key "LSP Organize imports")
 "lf" '(lsp-format-buffer :which-key "Lsp Format Buffer")
 "lr" '(lsp-rename :which-key "Lsp Rename")
 "ls" '(lsp-treemacs-symbols :which-key "Lsp Rename")
 "lF" '(lsp-treemacs-errors-list :which-key "List errors")
 "ld" '(lsp-ui-doc-focus-frame :which-key "Focus doc frame")
 "lD" '(lsp-ui-doc-unfocus-frame :which-key "Unfocus doc frame")
 "lq" '(quickrun :which-key "QuickRun")
 "lQ" '(quickrun-shell :which-key "Quick Run with Shell")
 "lc" '(lsp-execute-code-action :which-key "Execute Code Actions"))

(provide 'pspiagicw-lsp)
