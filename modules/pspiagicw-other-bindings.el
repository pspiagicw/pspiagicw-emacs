;;; pspiagicw-other-bindings.el -*- lexical-binding: t;

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "n" '(:ignore t :which-key "Narrow")
 "nr" '(narrow-to-region :which-key "Narrow Region")
 "nf" '(narrow-to-defun :which-key "Narrow to Function")
 "np" '(narrow-to-page :which-key "Narrow to Page"))

(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "g" '(:ignore t :which-key "Git")
 "gg" '(magit-status :which-key "Git Status")
 "gc" '(magit-clone :which-key "Git Clone"))


(general-define-key
 :keymaps 'override
 :states '(normal visual)
 :prefix "SPC"
 "j" '(:ignore t :which-key "Jump")
 "ji" '(imenu :which-key "Jump to tag using Imenu")
 "jl" '(link-hint-open-link :which-key "Jump to link")
 "jn" '(flycheck-next-error :which-key "Jump to next error")
 "jp" '(flycheck-previous-error :which-key "Jump to next error")
 "jc" '(link-hint-copy-link :which-key "Copy given link")
 "jd" '(dired-jump :which-key "Jump to dired for current buffer"))

(provide 'pspiagicw-other-bindings)
