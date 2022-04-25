;;; pspiagicw-erc.el -*- lexical-binding: t; -*-

(use-package erc
  :ensure nil
  :custom
  (erc-server "irc.libera.chat")
  (erc-nick "pspiagicw")
  (erc-user-full-name "pspiagicw")
  (erc-track-shorten-start 8)
  (erc-kill-buffer-on-part t)
  (erc-fill-functional 'erc-fill-static)
  (erc-fill-static-center 22))

(provide 'pspiagicw-erc)
