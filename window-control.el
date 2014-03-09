;;; Different window split functions, from
;;; http://www.emacswiki.org/emacs/ThreeWindows
;;;	For four windows:
( defun split-window-4()
	"Split window into four sub-windows"
	( interactive )
	( if ( = 1 ( length ( window-list ) ) )
		( progn ( split-window-vertically )
			( split-window-horizontally )
			( other-window 2 )
			( split-window-horizontally ) ) ) )

;; Helper function for splitting to two and three windows:
( defun change-split-type ( split-fn &optional arg )
	"Change three-window style from horizontal to vertical and vice-versa"
	( let ( ( bufList ( mapcar 'window-buffer ( window-list ) ) ) )
		( select-window ( get-largest-window ) )
		( funcall split-fn arg )
		( mapcar* 'set-window-buffer ( window-list ) bufList ) ) )

;; For two windows:
( defun change-split-type-2 ( &optional arg )
	"Change two-window from vertical to horizontal, and vice-versa"
	( interactive "P" )
	( let ( ( split-type ( lambda ( &optional arg )
				( delete-other-windows-internal )
				( if arg ( split-window-vertically )
					( split-window-horizontally ) ) ) ) )
		( change-split-type split-type arg ) ) )

;; For three windows:
( defun change-split-type-3-v ( &optional arg )
	"change 3 window style from horizon to vertical"
	( interactive "P" )
	( change-split-type 'split-window-3-horizontally arg ) )

( defun change-split-type-3-h ( &optional arg )
	"change 3 window style from vertical to horizon"
	( interactive "P" )
	( change-split-type 'split-window-3-vertically arg ) )

( defun split-window-3-horizontally ( &optional arg )
	"Split single window into three with the largest horizontal"
	( interactive "P" )
	( delete-other-windows )
	( split-window-horizontally )
	( if arg ( other-window 1 ) )
	( split-window-vertically ) )

( defun split-window-3-vertically ( &optional arg )
	"Split single window into three with the largest vertical"
	( interactive "P" )
	( delete-other-windows )
	( split-window-vertically )
	( if arg ( other-window 1 ) )
	( split-window-horizontally ) )
