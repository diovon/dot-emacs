;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; To get additional packages like use-package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(setq inhibit-startup-screen t)

;; Line wrap
(setq org-startup-indented t)

;; set start of week to Monday (not sunday)
(setq-default calendar-week-start-day 1)

;; Maximize frame window
(toggle-frame-maximized)

(use-package yankpad
  :ensure t
  ;;:defer 10
  :init
  (setq yankpad-file "~/.emacs.d/yankpad.org")
  :config
  (bind-key "<f7>" 'yankpad-map)
  (bind-key "<f12>" 'yankpad-expand)
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (yankpad use-package))))
