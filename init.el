;; ~/.emacs.d/init.el
;; Kyle J Mitchell
;; kjmitch@gmail.com

;;;; ------------------------------------------------------------
;;;; Appearance
;;;; ------------------------------------------------------------

;; Remove menu bar
( menu-bar-mode 0 )

;; Remove tool bar
( tool-bar-mode 0 )

;; Remove scroll bars
( scroll-bar-mode 0 )

;; Change bell notification to frame-flash notification
( setq visible-bell 1 )

;; Suppress welcome screen on load
( setq inhibit-startup-message t )

;; Suppress default message in scratch buffer
( setq initial-scratch-message "" )

;; Set default global font to Consolas
( set-face=attribute 'default nil :family "Consolas" )

;; Set theme to solarized-dark from Solarized repository,
;;		maintained and cloned separately into ~/.emacs.d/ folder
( add-to-list 'custom-theme-load-path "~/.emacs.d/emacs-color-theme-solarized" )
( load-theme 'solarized-dark t )

;;;; ------------------------------------------------------------
;;;; Formatting
;;;; ------------------------------------------------------------

;; Set indentation style, enable mix of tabs and spaces globally
( setq-default c-default-style "linux" c-basic-offset 4 )
( setq-default indent-tabs-mode t )

;; Per-mode settings for tabs and indentation, adapted from
;;		code at http://stackoverflow.com/a/6680038/538614
;; Python mode
( add-hook 'python-mode-hook
	( lambda ()
		( setq python-indent 8 )
		( setq tab-width 4 ) ) )

;; Other (C++, Emacs Lisp, LaTeX, Plain text) modes, hopefully works globally
( setq-default tab-width 4 )

;;;; ------------------------------------------------------------
;;;; Org Mode
;;;; ------------------------------------------------------------

;;; Most information here pulled from http://article.gmane.org/gmane.emacs.orgmode/33234

;;; Load Org Mode
( setq load-path ( cons "~/.emacs.d/org-mode/lisp" load-path ) )
( setq load-path ( cons "~/.emacs.d/org-mode/contrib/lisp" load-path ) )
( require 'org-install )
( require 'org )

;;; Activate Org Mode
; Not needed since Emacs 22.2, keep for backward compatibility:
( add-to-list 'auto-mode-alist '( "\\.org\\'" . org-mode ) )
; Not needed when global-font-lock-mode is on, keep for compatibility:
( add-hook 'org-mode-hook 'turn-on-font-lock )
( global-set-key ( kbd "C-c l" ) 'org-store-link )
( global-set-key ( kbd "C-c a" ) 'org-agenda )
( global-set-key ( kbd "C-c b" ) 'org-iswitchb )

;;; Set up Org Mode capture 
( global-set-key ( kbd "C-c r" ) 'org-capture )
( setq org-capture-templates '(
	( "t" "Agenda ToDo" entry
		( file-headline "C:/Org/Agenda.org" "Agenda" )
		"\n\n** TODO %?\n%T\n\n%i\n%a\n\n\n"
		:empty-lines 1 )

	( "n" "Agenda Notes" entry
		( file-headline "C:/Org/Agenda.org" "Agenda" )
		"\n\n** %?\n%T\n%i\n%a\n\n\n"
		:empty-lines 1 ) ) )

;;; Insert immediate time stamp
( setq org-agenda-skip-additional-timestamps nil )
( define-key global-map ( kbd "<f9>" ) '(
	lambda ()
		( interactive )
		( when
			( eq major-mode 'org-mode )
			( org-insert-time-stamp nil t t )
			( insert "\n" ) ) ) )

;;;; ------------------------------------------------------------
;;;; PowerShell
;;;; ------------------------------------------------------------

;;;; ------------------------------------------------------------
;;;; Generated
;;;; ------------------------------------------------------------

