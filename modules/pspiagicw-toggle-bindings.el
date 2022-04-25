;;; pspiagicw-toggle-bindings.el -*- lexical-binding: t; -*-

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "t" '(:ignore t :which-key "Toggle")
 "tt" '(shell :which-key "Toggle Terminal")
 "tn" '(display-line-numbers-mode :which-key "Toggle Line Numbers")
 "tk" '(which-key-mode :which-key "Toggle Which Key")
 "ta" '(company-mode :which-key "Toggle Autocompletion")
 "tA" '(global-company-mode :which-key "Toggle Autocompletion")
 "tM" '(menu-bar-mode :which-key "Toggle Menu Bar")
 "tf" '(auto-fill-mode :which-key "Toggle Whitespace mode")
 "ti" '(electric-indent-local-mode :which-key "Toggle Auto Indenting")
 "tl" '(hl-line-mode :which-key "Toggle Line Hightlight")
 "tf" '(flycheck-mode :which-key "Toggle Flymake")
 "tF" '(global-flycheck-mode :which-key "Toggle Global  Flymake")
 "t+" '(text-scale-increase :which-key "Toggle font sizes")
 "t-" '(text-scale-decrease :which-key "Toggle font sizes")
 "tp" '(electric-pair-local-mode :which-key "Toggle Pairing")
 "tP" '(electric-pair-mode :which-key "Toggle Pairing")
 "tw" '(whitespace-mode :which-key "Toggle Whitespace Mode")
 "ts" '(consult-theme :which-key "Toggle Whitespace Mode"))

(provide 'pspiagicw-toggle-bindings)
