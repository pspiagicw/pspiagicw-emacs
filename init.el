;;; init.el -*- lexical-binding: t; -*-

(add-to-list 'load-path (expand-file-name "modules/" user-emacs-directory))
(add-to-list 'load-path "/usr/share/emacs/site-lisp")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")

(setq visible-bell 1)
(setq large-file-warning-threshold 1000000000)

(defvar pspiagicw-default-font (font-spec :family "JetBrains Mono" :size 15)
  "The default font for Emacs")

(defvar pspiagicw-config-file (expand-file-name "config.el" pspiagicw-config-path)
  "The user's config path")
(when (file-exists-p pspiagicw-config-file)
  (load pspiagicw-config-file nil 'nomessage))

(setq gc-cons-threshold (* 2 1000 1000))


(defvar pspiagicw-unicode-font nil
  "Fallback font for Unicode glyphs")
 
