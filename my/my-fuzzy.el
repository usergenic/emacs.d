(add-to-list 'load-path "~/.emacs.d/vendor/fuzzy-find-in-project")
(require 'fuzzy-find-in-project)
(fuzzy-find-project-root (textmate-project-root))

(defun set-fuzzy-find-project-root-to-textmate-project-root  ()
  "use textmate-project-root function to figure out where fuzzy root should be"
  (interactive)
  (fuzzy-find-project-root (textmate-project-root)))

(global-set-key (kbd "M-t") 'fuzzy-find-in-project)
(global-set-key (kbd "C-c M-t") 'set-fuzzy-find-project-root-to-textmate-project-root)
