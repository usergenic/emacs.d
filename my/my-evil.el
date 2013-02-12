(setq load-path (add-to-list 'load-path "~/.emacs.d/vendor/evil"))

(setq evil-want-C-u-scroll t)
(require 'evil)

(evil-mode 1)

;; remap the C-u behavior to C-b, since we stole C-ul
(define-key evil-normal-state-map (kbd "C-b") 'universal-argument)
