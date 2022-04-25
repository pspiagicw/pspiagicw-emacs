;;; pspiagicw-shell.el -*- lexical-binding: t; -*-

(setq-default shell-file-name "/bin/bash")

(use-package exec-path-from-shell
  :config
  (exec-path-from-shell-initialize))

(defadvice term-sentinel (around my-advice-term-sentinel (proc msg))
  (if (memq (process-status proc) '(signal exit))
      (let ((buffer (process-buffer proc)))
        ad-do-it
        (kill-buffer buffer))
    ad-do-it))
(ad-activate 'term-sentinel)
(provide 'pspiagicw-shell)
