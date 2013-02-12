;;; package --- my-package
;;
;;; Commentary:
;;
;;; Code:

(if (not (featurep 'package)) (load-file "~/.emacs.d/oldemacs/package.el"))

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

;;; my-package ends here

