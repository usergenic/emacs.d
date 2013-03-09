;; this is to support indenting like
;;
;; class_method :hello,
;;              :there
;;
;; but it has problems...
;
; (defadvice ruby-indent-line (after line-up-args activate)
; (let (indent prev-indent arg-indent)
; (save-excursion
; (back-to-indentation)
; (when (zerop (car (syntax-ppss)))
; (setq indent (current-column))
; (skip-chars-backward " \t\n")
; (when (eq ?, (char-before))
; (ruby-backward-sexp)
; (back-to-indentation)
; (setq prev-indent (current-column))
; (skip-syntax-forward "w_.")
; (skip-chars-forward " ")
; (setq arg-indent (current-column)))))
; (when prev-indent
; (let ((offset (- (current-column) indent)))
; (cond ((< indent prev-indent)
; (indent-line-to prev-indent))
; ((= indent prev-indent)
; (indent-line-to arg-indent)))
; (when (> offset 0) (forward-char offset))))))
