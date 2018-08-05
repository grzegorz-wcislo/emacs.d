(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(require 'init-packages)

(setq make-backup-files nil)

(show-paren-mode)
(setq show-paren-delay 0.075)

(require 'init-interface)
(require 'init-editor)
(require 'init-keybindings)
(require 'init-evil)
(require 'init-scratch)

;; (use-package helm
;;   :bind (("M-x" . helm-M-x)
;;          ("C-x C-f" . helm-find-files)
;;          ("M-b" . helm-buffers-list)))

(use-package rjsx-mode
  :mode "\\.js\\'")

(use-package find-file-in-project)

(use-package flycheck
  :config
  (global-flycheck-mode)
  :custom
  (flycheck-highlighting-mode nil)
  (flycheck-indication-mode 'left-fringe))

(use-package neotree
  :custom
  (neo-smart-open t)
  :bind
  ([f8] . 'neotree-show)
  (:map neotree-mode-map
        ("j" . neotree-next-line)
        ("k" . neotree-previous-line)
        ("h" . neotree-select-up-node)
        ("l" . neotree-quick-look)
        ("L" . neotree-enter)
        ("r" . neotree-rename-node)
        ("d" . neotree-delete-node)
        ("c" . neotree-create-node)))

(provide 'init)
