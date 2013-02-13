;;; package --- my-textmate
;;
;;; Commentary:
;;
;; Loads the textmate-mode and assigns some more useful keybindings.
;;
;;; Code:

(require 'textmate)

(global-set-key (kbd "M-[") 'textmate-shift-left)
(global-set-key (kbd "M-]") 'textmate-shift-right)
(global-set-key (kbd "M-t") 'textmate-goto-file)

;;; my-textmate ends here
