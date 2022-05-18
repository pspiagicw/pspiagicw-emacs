;;; pspiagicw-dashboard.el -*- lexical-binding: t; -*-

(use-package dashboard
  :init
  (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
  ;; (setq dashboard-startup-banner "~/.config/emacs/banner.png")
  (setq dashboard-startup-banner "~/.config/emacs/doom.txt")
  (setq dashboard-center-content t)
  (setq dashboard-show-shortcuts nil)
  (setq dashboard-set-heading-icons t)
  (setq dashboard-set-file-icons t)
  (setq dashboard-set-navigator t)
  (setq dashboard-items '(
                          (recents . 2)
                          (projects . 3)
                          (agenda )))
  (setq dashboard-projects-switch-function 'project-switch-project)
  (setq dashboard-projects-backend 'projectile)
  :config
  (dashboard-setup-startup-hook))

;; (setq dashboard-item-generators
;;     '((custom . doom-dashboard-widget-shortmenu)
;;         (recents . dashboard-insert-recents)
;;         (bookmarks . dashboard-insert-bookmarks)
;;         (projects . dashboard-insert-projects)
;;         (agenda . dashboard-insert-agenda)
;;         (registers . dashboard-insert-registers)))

;; (setq dashboard-items '(custom))
(set-face-attribute 'dashboard-text-banner nil :foreground "grey")
(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
(setq inhibit-startup-message t)
(setq inhibit-startup-echo-area-message t)
;; (setq initial-scratch-message nil)

(defun +doom-dashboard--center (len s)
  (concat (make-string (ceiling (max 0 (- len (length s))) 2) ? )
          s))

(defvar +doom-dashboard--width 50)

(defface doom-dashboard-menu-desc '((t (:inherit font-lock-constant-face)))
  "Face used for the key description of menu widgets on the dashboard"
  :group 'doom-dashboard)


(defface doom-dashboard-menu-title '((t (:inherit font-lock-keyword-face)))
  "Face used for the title of menu widgets on the dashboard"
  :group 'doom-dashboard)


(defun doom-dashboard-widget-shortmenu (list-size)
  (let ((all-the-icons-scale-factor 1.45)
        (all-the-icons-default-adjust -0.02))
    (insert "\n")
    (dolist (section +doom-dashboard-menu-sections)
      (cl-destructuring-bind (label &key icon action when face key) section
        (when (and (fboundp action)
                   (or (null when)
                       (eval when t)))
          (insert
           (+doom-dashboard--center
            (- +doom-dashboard--width 1)
            (let ((icon (if (stringp icon) icon (eval icon t))))
              (format (format "%s%%s%%-10s" (if icon "%3s\t" "%3s"))
                      (or icon "")
                      (with-temp-buffer
                        (insert-text-button
                         label
                         'action
                         `(lambda (_)
                            (call-interactively (or (command-remapping #',action)
                                                    #',action)))
                         'face (or face 'doom-dashboard-menu-title)
                         'follow-link t
                         'help-echo
                         (format "%s (%s)" label
                                 (propertize (symbol-name action) 'face 'doom-dashboard-menu-desc)))
                        (format "%-37s" (buffer-string)))
                      ;; Lookup command keys dynamically
                      (propertize
                       (or key
                           (when-let*
                               ((keymaps
                                 (delq
                                  nil (list (when (bound-and-true-p evil-local-mode)
                                              (evil-get-auxiliary-keymap dashboard-mode-map 'normal))
                                            dashboard-mode-map)))
                                (key
                                 (or (when keymaps
                                       (where-is-internal action keymaps t))
                                     (where-is-internal action nil t))))
                             (with-temp-buffer
                               (save-excursion (insert (key-description key)))
                               (while (re-search-forward "<\\([^>]+\\)>" nil t)
                                 (let ((str (match-string 1)))
                                   (replace-match
                                    (upcase (if (< (length str) 3)
                                                str
                                              (substring str 0 3))))))
                               (buffer-string)))
                           "")
                       'face 'doom-dashboard-menu-desc))))
           (if (display-graphic-p)
               "\n\n"
             "\n")))))))




(defun pspiagicw/help ()
  (interactive)
  (message "Open Help"))


(defun pspiagicw/open-private-config ()
  (interactive)
  (message "Open Private Config"))

(defvar +doom-dashboard-menu-sections
  '(("Reload last session"
     :icon (all-the-icons-octicon "history" :face 'doom-dashboard-menu-title)
     :when (cond ((featurep! :ui workspaces)
                  (file-exists-p (expand-file-name persp-auto-save-fname persp-save-dir)))
                 ((require 'desktop nil t)
                  (file-exists-p (desktop-full-file-name))))
     :face (:inherit (doom-dashboard-menu-title bold))
     :action doom/quickload-session)
    ("Open org-agenda"
     :icon (all-the-icons-octicon "calendar" :face 'doom-dashboard-menu-title)
     :when (fboundp 'org-agenda)
     :action org-agenda)
    ("Recently opened files"
     :icon (all-the-icons-octicon "file-text" :face 'doom-dashboard-menu-title)
     :action consult-recent-file)
    ("Open project"
     :icon (all-the-icons-octicon "briefcase" :face 'doom-dashboard-menu-title)
     :action projectile-switch-project)
    ("Jump to bookmark"
     :icon (all-the-icons-octicon "bookmark" :face 'doom-dashboard-menu-title)
     :action consult-bookmark)
    ("Open private configuration"
     :icon (all-the-icons-octicon "tools" :face 'doom-dashboard-menu-title)
     :when (file-directory-p "~/.config/emacs")
     :action pspiagicw/open-private-config)
    ("Open documentation"
     :icon (all-the-icons-octicon "book" :face 'doom-dashboard-menu-title)
     :action pspiagicw/help))
  "An alist of menu buttons used by `doom-dashboard-widget-shortmenu'. Each
element is a cons cell (LABEL . PLIST). LABEL is a string to display after the
icon and before the key string.

PLIST can have the following properties:

  :icon FORM
    Uses the return value of FORM as an icon (can be literal string).
  :key STRING
    The keybind displayed next to the button.
  :when FORM
    If FORM returns nil, don't display this button.
  :face FACE
    Displays the icon and text with FACE (a face symbol).
  :action FORM
    Run FORM when the button is pushed.")


(provide 'pspiagicw-dashboard)
