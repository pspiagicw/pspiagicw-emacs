;;; pspiagicw-file-bindings.el -*- lexical-binding: t; -*-

(defun pspiagicw/crux-open-with ()
  "CRUX Open with for files"
  (interactive)
  (crux-open-with t))
 
(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "f" '(:ignore t :which-key "Files")
 ;; "ff" '(find-file :which-key "Find Files Interactively")
 "ff" '(find-file :which-key "Find Files Interactively")
 "fs" '(save-buffer :which-key "Save Current Buffer")
 "fS" '(save-some-buffers :which-key "Save Current Buffer")
 "fr" '(consult-recent-file :which-key "Find Recent Files")
 "fR" '(rename-file :which-key "Rename File")
 "fC" '(copy-file :which-key "Copy File")
 "fl" '(locate :which-key "Locate File")
 "fo" '(pspiagicw/crux-open-with :which-key "Locate File")
 "fh" '(crux-find-user-init-file :which-key "Find User Init File")
 "fw" '(find-file-other-window :which-key "Find File Other Window")
 "fU" '(crux-sudo-edit :which-key "Edit file as sudo"))

(provide 'pspiagicw-file-bindings)
