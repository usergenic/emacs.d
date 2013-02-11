;;; package --- my-auto-complete
;;
;;; Commentary:
;;
;;  Loads the auto-complete mode and sets up keybindings.
;;
;;; Code:

(require 'auto-complete)
(auto-complete-mode)
(setq ac-auto-start t)

;;; Make auto-complete available *everywhere*
(define-globalized-minor-mode real-global-auto-complete-mode
  auto-complete-mode (lambda ()
                       (if (not (minibufferp (current-buffer)))
                           (auto-complete-mode 1))
                       ))
(real-global-auto-complete-mode t)

(define-key ac-complete-mode-map (kbd "C-n") 'ac-next)
(define-key ac-complete-mode-map (kbd "C-p") 'ac-previous)

;;; my-auto-complete ends here
