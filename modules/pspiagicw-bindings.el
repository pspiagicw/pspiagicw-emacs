;;; pspiagicw-bindings.evil -*- lexical-binding: t; -*-

(use-package general)

(use-package hydra)

(require 'pspiagicw-global-bindings)
(require 'pspiagicw-file-bindings)
(require 'pspiagicw-buffer-bindings)
(require 'pspiagicw-toggle-bindings)
(require 'pspiagicw-help-bindings)
(require 'pspiagicw-quit-bindings)
(require 'pspiagicw-other-bindings)
(require 'pspiagicw-search-bindings)

(provide 'pspiagicw-bindings)
