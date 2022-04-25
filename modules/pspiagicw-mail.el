;;; pspiagicw-mail.el -*- lexical-binding: t; -*-

(use-package mu4e
  :ensure nil
  :config
  ;; (setq smtpmail-smtp-server "smtp.gmail.com"
  ;; 	smtpmail-smtp-service 465
  ;; 	send-mail-function 'smtpmail-send-it
  ;; 	smtpmail-stream-type 'ssl)
  (setq send-mail-function 'sendmail-send-it)
  (setq message-send-mail-function 'message-send-mail-with-sendmail)
  (setq sendmail-program "/usr/local/bin/msmtp-enqueue.sh")
  (setq message-sendmail-extra-arguments '("--read-envelope-from"))
  (setq message-sendmail-f-is-evil t)
  (setq message-kill-buffer-on-exit t)
  (setq mail-user-agent 'mu4e-user-agent)
  (setq read-mail-command 'mu4e)
  (setq mu4e-sent-message-behaviour 'delete)
  (setq mu4e-attachment-dir "~/downloads")
  (setq mu4e-change-filenames-while-moving t)
  (setq mu4e-update-interval nil)
  (setq mu4e-get-mail-command "true")
  (setq mu4e-maildir "~/.mail")
  (setq mu4e-compose-context-policy 'ask)
  (setq mu4e-compose-format-flowed t)
  (setq mu4e-context-policy 'always-ask)
  (setq mu4e-contexts
        (list
         ;; Work Account
         (make-mu4e-context
          :name "work"
          :leave-func (lambda () (mu4e-clear-caches))
          :match-func
          (lambda (msg)
            (when msg
              (string-prefix-p "/work" (mu4e-message-field msg :maildir))))
          :vars '(
                  (user-mail-address . "pspiagicw@gmail.com")
                  (user-full-name . "pspiagicw")
                  (mu4e-drafts-folder . "/work/[Gmail]/Drafts")
                  (mu4e-sent-folder . "/work/[Gmail]/Sent Mail")
                  (mu4e-refile-folder . "/work/[Gmail]/All Mail")
                  (mu4e-trash-folder . "/work/[Gmail]/Trash")
                  (mu4e-maildir-shortcuts . (
                                             ("/work/Inbox" . ?i)
                                             ("/work/[Gmail]/Sent Mail" . ?s)
                                             ("/work/[Gmail]/Trash" . ?t)
                                             ("/work/[Gmail]/Drafts" . ?d)
                                             ("/work/[Gmail]/All Mail" . ?a)))))
         (make-mu4e-context
          :name "college"
          :leave-func (lambda () (mu4e-clear-caches))
          :match-func
          (lambda (msg)
            (when msg
              (string-prefix-p "/college" (mu4e-message-field msg :maildir))))
          :vars '(
                  (user-mail-address . "pratham.sandeep2020@vitbhopal.ac.in")
                  (user-full-name . "Pratham Powar(20BAI10146)")
                  (mu4e-drafts-folder . "/college/[Gmail]/Drafts")
                  (mu4e-sent-folder . "/college/[Gmail]/Sent Mail")
                  (mu4e-refile-folder . "/college/[Gmail]/All Mail")
                  (mu4e-trash-folder . "/college/[Gmail]/Trash")
                  (mu4e-maildir-shortcuts . (
                                             ("/college/Inbox" . ?i)
                                             ("/college/[Gmail]/Sent Mail" . ?s)
                                             ("/college/[Gmail]/Trash" . ?t)
                                             ("/college/[Gmail]/Drafts" . ?d)
                                             ("/college/[Gmail]/All Mail" . ?a)))))
         (make-mu4e-context
          :name "personal"
          :leave-func (lambda () (mu4e-clear-caches))
          :match-func
          (lambda (msg)
            (when msg
              (string-prefix-p "/personal" (mu4e-message-field msg :maildir))))
          :vars '(
                  (user-mail-address . "prathampowar2001@gmail.com")
                  (user-full-name . "Pratham Sandeep Powar")
                  (mu4e-drafts-folder . "/personal/[Gmail]/Drafts")
                  (mu4e-sent-folder . "/personal/[Gmail]/Sent Mail")
                  (mu4e-refile-folder . "/personal/[Gmail]/All Mail")
                  (mu4e-trash-folder . "/personal/[Gmail]/Trash")
                  (mu4e-maildir-shortcuts . (
                                             ("/personal/Inbox" . ?i)
                                             ("/personal/[Gmail]/Sent Mail" . ?s)
					     ("/personal/[Gmail]/Trash" . ?t)
					     ("/personal/[Gmail]/Drafts" . ?d)
					     ("/personal/[Gmail]/All Mail" . ?a)
					     )))))))


(add-hook 'message-send-hook
          (lambda ()
            (unless (yes-or-no-p "Sure you want to send this?")
              (signal 'quit nil))))

(provide 'pspiagicw-mail)
