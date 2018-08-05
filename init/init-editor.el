(global-auto-revert-mode 1)
(global-visual-line-mode -1)

(setq-default
 ;; Formatting
 delete-trailing-lines nil
 fill-column 80
 ;; Spaces, not tabs
 indent-tabs-mode nil
 require-final-newline t
 tab-always-indent t
 tab-width 4
 ;; Wrapping
 truncate-lines t
 truncate-partial-width-windows 50
 visual-fill-column-center-text nil
 word-wrap t
 ;; Scrolling
 hscroll-margin 1
 hscroll-step 1
 scroll-conservatively 9999
 scroll-margin 3
 scroll-preserve-screen-position t)

(provide 'init-editor)
