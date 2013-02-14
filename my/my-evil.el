(setq load-path (add-to-list 'load-path "~/.emacs.d/vendor/evil"))

(setq evil-want-C-u-scroll t)
(require 'evil)

(evil-mode 1)

;; remap the C-u behavior to C-b, since we stole C-ul
(define-key evil-normal-state-map (kbd "C-b") 'universal-argument)

;;; C-g as general purpose escape key sequence.
;;;
(defun my-esc (prompt)
  "Functionality for escaping generally.  Includes exiting Evil insert state and C-g binding. "
  (cond
   ;; If we're in one of the Evil states that defines [escape] key, return [escape] so as
   ;; Key Lookup will use it.
   ((or (evil-insert-state-p) (evil-normal-state-p) (evil-replace-state-p) (evil-visual-state-p)) [escape])
   ;; This is the best way I could infer for now to have C-c work during evil-read-key.
   ;; Note: As long as I return [escape] in normal-state, I don't need this.
   ;;((eq overriding-terminal-local-map evil-read-key-map) (keyboard-quit) (kbd ""))
   (t (kbd "C-g"))))

(define-key key-translation-map (kbd "C-g") 'my-esc)
(define-key evil-normal-state-map (kbd "C-n") 'evil-next-line)
(define-key evil-normal-state-map (kbd "C-p") 'evil-previous-line)
(define-key evil-insert-state-map (kbd "C-n") 'evil-next-line)
(define-key evil-insert-state-map (kbd "C-p") 'evil-previous-line)

;; Works around the fact that Evil uses read-event directly when in operator state, which
;; doesn't use the key-translation-map.
(define-key evil-operator-state-map (kbd "C-g") 'keyboard-quit)
