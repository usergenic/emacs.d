;;; package --- init
;;
;;; Commentary:
;;
;;  This is what my .emacs file calls.
;;
;;; Code:

(setq load-path (add-to-list 'load-path "~/.emacs.d/my/"))
(setq load-path (add-to-list 'load-path "~/.emacs.d/vendor/"))

(require 'ido)

; (setq evil-auto-indent nil)
; (setq c-electric-pound-behavior nil)
; (setq electric-indent-mode nil)
; (setq electric-layout-mode nil)
; (setq electric-pair-mode nil)
(setq c-tab-always-indent nil)
(setq c-syntactic-indentation nil)

(load "my-rbenv.el")
(load "my-package.el")
(load "my-auto-complete.el")
(load "my-textmate.el")
(load "my-auto-mode-alist.el")
(load "my-key-bindings.el")
(load "my-backups.el")
(load "my-whitespace.el")
(load "my-evil.el")
(load "my-fuzzy.el")
(load "my-loccur.el")

;;; Hide unnecessary interface features
(setq inhibit-startup-message t)
(if (fboundp 'menu-bar-mode)   (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode)   (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;;; Line-by-line scrolling
(setq scroll-step 1)

;; Enable ANSI-Color in shells
(require 'ansi-color)
(ansi-color-for-comint-mode-on)

;;; Change the yes-or-no prompts to single y or n.
(fset 'yes-or-no-p 'y-or-n-p)

;;; Disable emacs tendency to insert # -*- coding: utf-8 -*- into ruby files
(setq-default ruby-insert-encoding-magic-comment nil)

(setq-default completion-ignore-case t)
(setq search-highlight t
      query-replace-highlight t)

(setq visible-bell t)
(setq line-number-mode t
      column-number-mode t
      transient-mark-mode t)

;;; Navigate split buffer windows with shift-{left,right,up,down}
(windmove-default-keybindings)

;;; Wrap at column 80 - Old School
(setq-default fill-column 80)

;;; Don't automatically wrap as you type.
(auto-fill-mode nil)

;;; Zoom Font

(defun screen-zoom (n)
  "with positive N, increase the font size, otherwise decrease it"
  (set-face-attribute 'default (selected-frame) :height
    (+ (face-attribute 'default :height) (* (if (> n 0) 1 -1) 10))))

;; M-return for fullscreen, like the SIMBL mega-zoomer plugin

(defun mac-toggle-max-window ()
  (interactive)
  (set-frame-parameter nil 'fullscreen
    (if (frame-parameter nil 'fullscreen)
      nil
      'fullboth)))

;;; You don't need to ask me this whenever I'm killing a buffer from client call.

(defun server-remove-kill-buffer-hook () (remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)) (add-hook 'server-visit-hook 'server-remove-kill-buffer-hook)

;;; emacs init ends here
