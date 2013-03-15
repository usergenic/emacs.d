;(setq cedet-root-path (file-name-as-directory "~/workset/emacs/pkgs/cedet"))

;(load-file (concat cedet-root-path "cedet-devel-load.el"))
;(add-to-list 'load-path (concat cedet-root-path "contrib"))

;; select which submodes we want to activate
(require 'eassist)

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-local-symbol-highlight-mode)
;;(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)

;; Activate semantic
(semantic-mode 1)
(setq pulse-flag nil)

;; load contrib library
;;(setq semantic-clang-binary "~/llvm/build/Debug+Asserts/bin/clang")
(require 'eassist)
(require 'semantic/ia)
(require 'semantic/bovine/c)
;(require 'semantic/bovine/clang)

;; customisation of modes

(defun my/cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol)
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-c=" 'semantic-decoration-include-visit)
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  (local-set-key "\C-cq" 'semantic-ia-show-doc)
  (local-set-key "\C-cs" 'semantic-ia-show-summary)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
  ;(add-to-list 'ac-sources 'ac-source-gtags)
  ;(add-to-list 'ac-sources 'ac-source-semantic)
  )

(add-hook 'c-mode-common-hook 'my/cedet-hook)
(add-hook 'lisp-mode-hook 'my/cedet-hook)
(add-hook 'scheme-mode-hook 'my/cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my/cedet-hook)
(add-hook 'erlang-mode-hook 'my/cedet-hook)

(defun my/c-mode-cedet-hook ()
  (local-set-key "\C-ct" 'eassist-switch-h-cpp)
  (local-set-key "\C-xt" 'eassist-switch-h-cpp)
  (local-set-key "\C-ce" 'eassist-list-methods)
  (local-set-key "\C-c\C-r" 'semantic-symref)
  )

(add-hook 'c-mode-common-hook 'my/c-mode-cedet-hook)

; (when (cedet-gnu-global-version-check t)
;     (semanticdb-enable-gnu-global-databases 'c-mode)
;       (semanticdb-enable-gnu-global-databases 'c++-mode))

; (when (cedet-ectag-version-check t)
;   (semantic-load-enable-primary-ectags-support))

;; SRecode
; (global-srecode-minor-mode 1)

;; EDE
(global-ede-mode 1)
(ede-enable-generic-projects)
;; Setup JAVA....
; (require 'cedet-java)

;; ;; integration with imenu
;; (defun my-semantic-hook ()
;;   (imenu-add-to-menubar "TAGS"))
;; (add-hook 'semantic-init-hooks 'my-semantic-hook)

;;; minimial-cedet-config.el ends here
