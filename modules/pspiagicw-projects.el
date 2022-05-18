;;; pspiagicw-projects.el -*- lexical-binding:t -*-

(use-package projectile
  :config
  (setq projectile-completion-system 'auto)
  (setq projectile-project-search-path '("~/code/python/projects/" "~/code/golang/projects/" "~/code/flutter/projects/" "~/code/other-projects/"))
  (setq projectile-switch-project-action #'projectile-dired)
  (setq projectile-tags-command "ctags -Re -f \"%s\" %s \"%s\"")
  (setq tags-revert-without-query t)
  (projectile-mode 1))


(use-package ripgrep)
(general-define-key
 :states '(normal visual)
 :keymaps 'override
 :prefix "SPC"
 "p" '(:ignore t :which-key "Projects")
 "pp" '(projectile-switch-project :which-key "Switch Project")
 "pc" '(projectile-compile-project :which-key "Compile Project")
 "pt" '(projectile-test-project :which-key "Test Project")
 "pf" '(projectile-find-file :which-key "Find File in Project")
 "ps" '(projectile-ripgrep :which-key "Grep in your Project")
 "pr" '(projectile-run-project :which-key "Run Project")
 "pb" '(projectile-switch-to-buffer :which-key "Switch to Buffer in Project")
 "pk" '(projectile-kill-buffers :which-key "Kill all Project buffers")
 "p&" '(projectile-run-async-shell-command-in-root :which-key "Run Command Async in Project")
 "p!" '(projectile-run-shell-command-in-root :which-key "Run Command in Project")
 "pd" '(projectile-dired :which-key "Open Dired on Project Root")
 "pg" '(projectile-find-tag :which-key "Find Tags in Project")
 "p%" '(projectile-replace-regexp :which-key "Replace Name in Project")
 "p'" '(projectile-run-eshell :which-key "Run shell in Root of Project")
 "po" '(projectile-multi-occur :which-key "Run Multi-Occur in Project"))


(use-package magit)

(provide 'pspiagicw-projects)
