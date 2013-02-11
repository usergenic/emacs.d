;;; package --- my-package
;;
;;; Commentary:
;;
;;; Code:

(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;; my-package ends here

