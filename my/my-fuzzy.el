(add-to-list 'load-path "~/.emacs.d/vendor/fuzzy-find-in-project")
(require 'fuzzy-find-in-project)
(fuzzy-find-project-root (textmate-project-root))

(global-set-key (kbd "M-t") 'fuzzy-find-in-project)

