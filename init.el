;;; package --- init
;;
;;; Commentary:
;;
;;  This is what my .emacs file calls.
;;
;;; Code:

(setq load-path (add-to-list 'load-path "~/.emacs.d/my/"))

(require 'ido)

(load "my-package.el")
(load "my-auto-complete.el")
(load "my-textmate.el")
(load "my-auto-mode-alist.el")
(load "my-key-bindings.el")
(load "my-backups.el")
(load "my-whitespace.el")
(load "my-evil.el")

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

;;; Run server-mode on so shell can emacsclient in
(server-start)

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

;;; emacs init ends here
