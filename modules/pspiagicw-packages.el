;;; pspiagicw-packages.el -*- lexical-binding: t; -*-

(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(provide 'pspiagicw-packages)
