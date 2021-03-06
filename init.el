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
( set-face-attribute 'default nil :family "Consolas" )

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

;;; Set up variables to find files in Dropbox on systems with different drive paths
( setenv "dropbox" ( getenv "Dropbox" ) )
( setenv "agenda" ( concat "dropbox" "/OrgFiles/agenda.org" ) )

;;; Set up Org Mode capture 
( global-set-key ( kbd "C-c r" ) 'org-capture )
( setq org-capture-templates '(
	( "t" "Agenda ToDo" entry
		( file-headline "agenda" "Agenda" )
		"\n\n** TODO %?\n%T\n\n%i\n%a\n\n\n"
		:empty-lines 1 )

	( "n" "Agenda Notes" entry
		( file-headline "agenda" "Agenda" )
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

;; Script powershell.el and inclusion code (modified) found through this page:
;; https://blogs.msdn.com/b/dotnetinterop/archive/2008/04/10/run-powershell-as-a-shell-within-emacs.aspx
( load-file "~/.emacs.d/powershell.el" )
( setq explicit-shell-file-name 
	"C:/Windows/system32/WindowsPowerShell/v1.0/powershell.exe" )
( setq explicit-powershell.exe-args '( "-Command" "-" ) )
( autoload 'powershell "powershell" "Run PowerShell as a shell within Emacs." t )

;;;; ------------------------------------------------------------
;;;; Other
;;;; ------------------------------------------------------------

;; I'll re-add the call to window-control.el once I've improved the code
;;		and functionality from http://www.emacswiki.org/emacs/ThreeWindows
;;( load-file "~/.emacs.d/window-control.el" )

;;;; ------------------------------------------------------------
;;;; Generated
;;;; ------------------------------------------------------------

;; Generated by Emacs, no need to alter
( custom-set-variables
	;; custom-set-variables was added by Custom.
	;; If you edit it by hand, you could mess it up, so be careful.
	;; Your init file should contain only one such instance.
	;; If there is more than one, they won't work right.
	'( custom-safe-themes ( quote ( "7392f213ece957a89580293fb7976359b33d5afd17709a3add22e098c19552a9" "cf3e206f8fe53354921a492fb58eee2efffef3251032387752f725c789f612ff" default ) ) )
)

( custom-set-faces
	;; custom-set-faces was added by Custom.
	;; If you edit it by hand, you could mess it up, so be careful.
	;; Your init file should contain only one such instance.
	;; If there is more than one, they won't work right.
)