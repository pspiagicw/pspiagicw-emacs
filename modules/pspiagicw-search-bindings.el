;;; pspiagicw-search-bindnigs.el -*- lexical-binding: t; -*-

;; (use-package deadgrep)

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "s" '(:ignore t :which-key "Search")
 "sf" '(grep-find :which-key "Search Using Grep Recursively")
 "ss" '(grep :which-key "Search Using Grep")
 "so" '(occur :which-key "Search Using Occur")
 ;; "sd" '(deadgrep :which-key "Search using Deadgrep")
 "sr" '(consult-ripgrep :which-key "Search Using Occur"))

(provide 'pspiagicw-search-bindings)
