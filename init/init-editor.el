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
 tab-width 2
 ;; Wrapping
 truncate-lines t
 truncate-partial-width-windows 50
 visual-fill-column-center-text nil
 word-wrap t
 ;; Scrolling
 hscroll-margin 3
 hscroll-step 3
 scroll-conservatively 9999
 scroll-margin 3
 scroll-preserve-screen-position t)

(use-package neotree
  :custom
  (neo-smart-open t)
  (neo-window-width 40)
  :bind (:map neotree-mode-map
              ("f" . neotree-stretch-toggle)
              ("." . neotree-hidden-file-toggle)
              ("j" . neotree-next-line)
              ("k" . neotree-previous-line)
              ("h" . neotree-select-up-node)
              ("l" . neotree-quick-look)
              ("L" . neotree-enter)
              ("r" . neotree-rename-node)
              ("d" . neotree-delete-node)
              ("c" . neotree-create-node)))

(use-package projectile
  :custom
  (projectile-project-search-path '("~/Personal_Projects/" "~/University/"))
  (projectile-command-map nil)
  (projectile-completion-system 'ivy)
  :config
  (projectile-mode 1))

(use-package flycheck
  :config
  (global-flycheck-mode)
  :custom
  (flycheck-highlighting-mode nil)
  (flycheck-indication-mode 'left-fringe))

(use-package dumb-jump
  :custom
  (dumb-jump-selector 'ivy)
  (dumb-jump-aggressive nil)
  (dumb-jump-force-searcher 'ag))

(use-package company
  :config
  (global-company-mode))

(provide 'init-editor)
