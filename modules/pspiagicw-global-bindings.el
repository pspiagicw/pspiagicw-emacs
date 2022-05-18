;;; pspiagicw-global-bindings.el -*- lexical-binding: t; -*-

(defun pspiagicw/new-eshell ()
  "Create a new-eshell"
  (interactive)
  (eshell t))

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
  ";" '(execute-extended-command :which-key "Execute a Command")
  ">" '(evil-next-buffer :which-key "Move to Next Buffer")
  "<" '(evil-prev-buffer :which-key "Move to Prev Buffer")
  "/" '(consult-line :which-key "Grep in Current Buffer")
  "." '(find-file :which-key "Find File")
  "!" '(shell-command :which-key "Execute Shell Command")
  "&" '(async-shell-command :which-key "Execute Shell Command Async")
  "'" '(pspiagicw/new-eshell :which-key "Open eshell")
  "RET" '(consult-bookmark :which-key "Browse Bookmarks"))

(provide 'pspiagicw-global-bindings)
