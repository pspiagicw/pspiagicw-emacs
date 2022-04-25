;;; pspiagicw-defaults.el -*- lexical-binding: t; -*-

;; Revert Dired and other buffers
(setq global-auto-revert-non-file-buffers t)

;; Revert buffers when the underlying file has changed
(global-auto-revert-mode 1)

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Use "y" and "n" to confirm/negate prompt instead of "yes" and "no"
(fset 'y-or-n-p 'yes-or-no-p)

;; Do not saves duplicates in kill-ring
(setq kill-do-not-save-duplicates t)

;; Make scrolling less stuttered
(setq auto-window-vscroll nil)
(setq fast-but-imprecise-scrolling t)
(setq scroll-conservatively 101)
(setq scroll-margin 0)
(setq scroll-preserve-screen-position t)

;; Make shebang (#!) file executable when saved
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)
;; Don't save file by default
(setq auto-save-default nil)
;; Make some backup files
(setq make-backup-files t)
;; But save them in another directory
(setq backup-directory-alist '(("." . "~/.config/emacs/backup-files")))
;; Backup by copying the file rather than symlinking
(setq backup-by-copying t)

;; Load the custom file
(setq custom-file (concat user-emacs-directory "custom.el"))
(when (file-exists-p custom-file)
  (load custom-file))

;; Disable the audio bell but enable visual bell
(setq visible-bell -1)
;; Ignore the bell function for visual clues
(setq ring-bell-function 'ignore)
;; No frame title
(setq frame-title-format nil)

;; No file dialog
(setq use-file-dialog nil)

;; No dialog box
(setq use-dialog-box nil)

;; No popup windows
(setq pop-up-windows nil)

;; No empty line indicators
(setq indicate-empty-lines nil)

;; No cursor in inactive windows
(setq cursor-in-non-selected-windows nil)
;; Provides with good default functions



(provide 'pspiagicw-defaults)
