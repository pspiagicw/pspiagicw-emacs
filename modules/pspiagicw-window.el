;;; pspiagicw-window.el -*- lexical-binding: t; -*-

(winner-mode 1)


(defun pspiagicw/vsplit ()
  "Custom vpslit with focus going to split"
  (interactive)
  (evil-window-vsplit)
  (evil-window-right 1))

(defun pspiagicw/split ()
  "Custom vpslit with focus going to split"
  (interactive)
  (evil-window-split)
  (evil-window-down 1))

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "w" '(:ignore t :which-key "Window")
 "wv" '(pspiagicw/vsplit :which-key "Split Vertically")
 "ws" '(pspiagicw/split :which-key "Split Horizonatally")
 "wc" '(evil-window-delete :which-key "Delete Window")
 "w=" '(balance-windows :which-key "Balance Windows")
 "wh" '(evil-window-left :which-key "Move to Left Window")
 "wl" '(evil-window-right :which-key "Move to Right Window")
 "wj" '(evil-window-down :which-key "Move to Below Window")
 "wk" '(evil-window-up :which-key "Move to Top Window")
 "wo" '(delete-other-windows :which-key "Delete other Windows")
 "wu" '(winner-undo :which-key "Undo Window Configuration")
 "wr" '(winner-redo :which-key "Redo Window Configuration"))

(provide 'pspiagicw-window)
