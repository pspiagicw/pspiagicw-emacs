;;; pspiagicw-buffer-bindings.el -*- lexical-binding: t; -*-

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "b" '(:ignore t :which-key "Buffer")
 "bn" '(evil-next-buffer :which-key "Switch to next buffer")
 "bp" '(evil-prev-buffer :which-key "Switch to prev buffer")
 "bb" '(switch-to-buffer :which-key "Switch to Buffer")
 "bR" '(rename-buffer :which-key "Rename buffer")
 "br" '(revert-buffer :which-key "Revert buffer")
 "bd" '(evil-delete-buffer :which-key "Delete Buffer")
 "bi" '(ibuffer :which-key "Open Ibuffer")
 "bR" '(read-only-mode :which-key "Toggle Read Only Mode")
 "bs" '(crux-create-scratch-buffer :which-key "Make a new scratch buffer")
 "bw" '(switch-to-buffer-other-window :which-key "Switch to buffer in other window"))
(provide 'pspiagicw-buffer-bindings)
