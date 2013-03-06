;;; package --- my-backups
;;
;;; Commentary:
;;
;;  Settings related to Emacs automated backup of edited files.
;;
;;; Code:

(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      backup-by-copying t    ; don't delink hardlinks
      delete-old-versions t  ; automatically delete excess backups
      version-control t      ; use version numbers on backups
      kept-new-versions 6    ; how many of newest versions to keep
      kept-old-versions 2    ; how many of oldest versions to keep
      )

(setq create-lockfiles nil)

(auto-save-mode nil) ; turn it off!

;;; my-backups ends here
