(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(setq make-backup-files nil)

(require 'init-packages)
(require 'init-interface)
(require 'init-editor)
(require 'init-keybindings)
(require 'init-evil)
(require 'init-git)
(require 'init-scratch)

(use-package rjsx-mode
  :mode "\\.js\\'")

(use-package haskell-mode
  :mode "\\.hs\\'")

(use-package elm-mode)

(use-package flycheck
  :config
  (global-flycheck-mode)
  :custom
  (flycheck-highlighting-mode nil)
  (flycheck-indication-mode 'left-fringe))

(use-package javascript-eslint)

(use-package tex
  :ensure auctex
  :custom
  (Tex-PDF-mode t))

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))

(server-start)

(provide 'init)
