;; ~/.emacs.d/init.el
;; Kyle J Mitchell
;; kjmitch@gmail.com

;;; ------------------------------------------------------------
;;; Appearance
;;; ------------------------------------------------------------

;;; Remove menu bar
( menu-bar-mode 0 )

;;; Remove tool bar
( tool-bar-mode 0 )

;;; Remove scroll bars
( scroll-bar-mode 0 )

;;; Change bell notification to frame-flash notification
( setq visible-bell 1 )

;;; Suppress welcome screen on load
( setq inhibit-startup-message t )

;;; Suppress default message in scratch buffer
( setq initial-scratch-message "" )

;;; Set default global font to Consolas
( set-face=attribute 'default nil :family "Consolas" )

;;; Set theme to solarized-dark from Solarized repository,
;;;		maintained and cloned separately into ~/.emacs.d/ folder
( add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized" )
( load-theme 'solarized-dark t )

;;; ------------------------------------------------------------
;;; Formatting
;;; ------------------------------------------------------------

;;; ------------------------------------------------------------
;;; Org Mode
;;; ------------------------------------------------------------

;;; ------------------------------------------------------------
;;; PowerShell
;;; ------------------------------------------------------------

;;; ------------------------------------------------------------
;;; Generated
;;; ------------------------------------------------------------

