;;; package --- my-whitespace
;;
;;; Commentary:
;;
;;  Tabs must die
;;
;;; Code:

(setq-default c-basic-offset 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default js2-basic-offset 2)

(defun untabify-buffer ()
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "[ \t]+$" nil t)
      (delete-region (match-beginning 0) (match-end 0)))
    (goto-char (point-min))
    (if (search-forward "\t" nil t)
  (untabify (1- (point)) (point-max))))
  nil)

(add-hook 'before-save-hook 'untabify-buffer)

;;; my-whitespace ends here
