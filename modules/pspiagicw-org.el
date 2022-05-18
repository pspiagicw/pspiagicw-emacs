;;; pspiagicw-org.el -*- lexical-binding: t; -*-

(use-package org
  :ensure nil
  :config
  (setq org-latex-packages-alist nil)
  (setq org-latex-listings 'minted)
  (setq org-latex-packages-alist '(("" "minted")))
  (setq org-confirm-elisp-link-function nil)
  (setq org-latex-pdf-process
        '("pdflatex -shell-escape -interaction nonstopmode %f"))
  (setq org-hide-emphasis-markers t))

(use-package org-tempo
  :ensure nil
  :after org
  :config
  (push '("conf-unix" . conf-unix ) org-src-lang-modes)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (python . t)
     (C . t)
     (shell . t)
     (haskell . t)
     (java . t)
     (sql . t)
     (go . t)
     (dot . t)
     (matlab . t)))
  (setq org-export-babel-execute nil)
  (setq org-src-preserve-indentation t)
  (setq org-structure-template-alist
   '(("a" . "export ascii")
     ("c" . "center")
     ("C" . "comment")
     ("e" . "example")
     ("E" . "export")
     ("h" . "export html")
     ("l" . "export latex")
     ("q" . "quote")
     ("s" . "src")
     ("v" . "verse")
     ("sh" . "src shell")
     ("py" . "src python")
     ("el" . "src emacs-lisp")
     ("hs" . "src haskell")
     ("sq" . "src sql")
     ("ml" . "src jupyter-python :session default :async yes")
     )))

(general-define-key
 :keymaps 'org-mode-map
 :states '(normal visual)
 :prefix "SPC"
 "mt" '(:ignore t :which-key "org-toggle")
 "me" '(org-export-dispatch :which-key "Org Export")
 "mw" '(org-refile :which-key "Org Refile")
 "mth" '(org-toggle-heading :which-key "Org Toggle Heading")
 "mti" '(org-toggle-item :which-key "Org Toggle Item")
 "mtt" '(org-todo :which-key "Org toggle todo")
 "mtc" '(org-toggle-checkbox :which-key "Org toggle checkbox")
 "ms" '(org-schedule :which-key "Org Schedul")
 "mc" '(org-ctrl-c-ctrl-c :which-key "Org Ctrl C")
 "ma" '(org-agenda-file-to-front :which-key "Org Agenda Add")
 "mi" '(org-insert-structure-template :which-key "Org Insert Structure")
 "mT" '(org-babel-tangle :which-key "Org Babel Tangle")
 "ml" '(org-insert-link :which-key "Org Insert Link")
 "ml" '(org-insert-link :which-key "Org Insert Link")
 "m'" '(org-edit-special :which-key "Org Edit Special"))

(use-package org-roam
  :init
  (setq org-roam-v2-ack t)
  :config
  (setq org-roam-directory "~/Documents/org/org-roam")
  (setq org-roam-completion-everywhere t)
  (org-roam-setup))


(setq pspiagicw/gtd-next-action-head "Next Actions: ")
(setq pspiagicw/gtd-waiting-head "Waiting on:")
(setq pspiagicw/gtd-complete-head "Completed items:")
(setq pspiagicw/gtd-project-head "Projects:")
(setq pspiagicw/gtd-someday-head "Someday/maybe:")
(setq pspiagicw/gtd-read-head "Read/Research:")

(use-package org
  :ensure nil
  :config
  (setq org-agenda-files '("~/Documents/org/tasks"))
  (setq org-icalendar-combined-agenda-file "~/Documents/org/agenda.ics")
  (setq org-agenda-custom-commands
        '(
          ("g" "GTD View"
           ((agenda)
            (tags-todo "NEXT" ((org-agenda-overriding-header pspiagicw/gtd-next-action-head)))
            (tags-todo "WAITING" ((org-agenda-overriding-header pspiagicw/gtd-waiting-head)))
            (tags-todo "READ" ((org-agenda-overriding-header pspiagicw/gtd-read-head)))
            (tags-todo "PROJECT" ((org-agenda-overriding-header pspiagicw/gtd-project-head)))
            (todo "DONE" ((org-agenda-overriding-header pspiagicw/gtd-complete-head)))
            (tags "SOMEDAY" ((org-agenda-overriding-header pspiagicw/gtd-someday-head)))
            ))
          ))
  (setq org-todo-keywords
        '(
          (sequence "TODO(t)" "WAITING(w)" "NEXT" "|" "DONE(d)")
          ))
  (setq org-refile-targets
        '(
          (nil :maxlevel . 3)
          (org-agenda-files :maxlevel . 1)))
  (setq org-outline-path-complete-in-steps nil)
  (setq org-refile-use-outline-path t)
  (setq org-agenda-start-on-weekday nil)
  (setq org-agenda-span 10)
  (setq org-agenda-start-day "-3d")
  )

(general-define-key
 :keymaps 'override
 :states '(normal visual)
 :prefix "SPC"
 "r" '(:ignore t :which-key "Org Roam Binding")
 "rf" '(org-roam-node-find :which-key "Find Org Roam Node")
 "ri" '(org-roam-node-insert :which-key "Insert Org Roam Node"))

(use-package org-roam-ui)

(provide 'pspiagicw-org)
