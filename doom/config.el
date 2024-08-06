;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Email
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Line style | font | frame title | theme
(setq display-line-numbers-type t)
(setq doom-font "JetBrainsMono Nerd Font:pixelsize=15:weight=regular:slant=italic:width=normal:spacing=0:scalable=true")
(setq frame-title-format "")
(tool-bar-mode nil)
(menu-bar-mode t)
(setq doom-theme 'doom-moonlight)

;; (setq cur-time (nth 2 (decode-time)))
;; (cond
;;  ((< cur-time 16) (setq doom-theme 'doom-fairy-floss))
;;  ((>= cur-time 16) (setq doom-theme 'doom-snazzy))
;;  )

;; Frame size
(when window-system (set-frame-size (selected-frame) 158 50))
(when window-system (set-frame-position (selected-frame) 60 20))

;; Menu bar option for tiling

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org/")

(require 'dap-lldb)
