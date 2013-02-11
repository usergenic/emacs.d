;;; package --- my-backups
;;
;;; Commentary:
;;
;;  Settings related to Emacs automated backup of edited files.
;;
;;; Code:

(setq backup-directory-alist `(("." . "~/.emacs_backups")))
(setq backup-by-copying t)
(setq delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)

;;; my-backups ends here
