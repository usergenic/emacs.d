;;; package --- my-auto-mode-alist
;;
;;; Commentary:
;;
;;  Establishes the automatic mode assignment based on filename pattern.
;;
;;; Code:

(setq auto-mode-alist (cons '("Cakefile"    . coffee-mode    ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.coffee"   . coffee-mode    ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.less"     . css-mode       ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.scss"     . css-mode       ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.feature"  . feature-mode   ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.html"     . html-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.erb"      . rhtml-mode     ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.js"       . js2-mode       ) auto-mode-alist))
(setq auto-mode-alist (cons '("README"      . markdown-mode  ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode  ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md"       . markdown-mode  ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.txt"      . markdown-mode  ) auto-mode-alist))
(setq auto-mode-alist (cons '("Gemfile"     . ruby-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.gemspec"  . ruby-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("Guardfile"   . ruby-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("Rakefile"    . ruby-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rake"     . ruby-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("Stationfile" . ruby-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.rb"       . ruby-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.json"     . yaml-mode      ) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.yml"      . yaml-mode      ) auto-mode-alist))

;;; my-auto-mode-alist ends here
