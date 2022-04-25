;;; pspiagicw-quit-bindings.el -*- lexical-binding: t; -*-

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "qq" '(delete-frame :which-key "Delete Frame"))

(provide 'pspiagicw-quit-bindings)
