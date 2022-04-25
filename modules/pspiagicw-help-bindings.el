;;; pspiagicw-help-bindings.el -*- lexical-binding: t; -*-

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "h" '(:ignore t :which-key "Help")
 "hf" '(describe-function :which-key "Describe Function")
 "hv" '(describe-variable :which-key "Describe Variable")
 "hc" '(describe-key :which-key "Describe Key")
 "hp" '(describe-package :which-key "Describe Package")
 "hi" '(info :which-key "Info Manuals")
 "hm" '(describe-mode :which-key "Describe Mode"))

(provide 'pspiagicw-help-bindings)
