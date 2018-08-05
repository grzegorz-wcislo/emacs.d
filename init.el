(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(require 'init-packages)

(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(global-display-line-numbers-mode t)
(column-number-mode t)

(setq make-backup-files nil)

(show-paren-mode)
(setq show-paren-delay 0.075)

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

(use-package all-the-icons)

(use-package doom-themes
  :after all-the-icons
  :config
  (load-theme 'doom-vibrant t)
  (doom-themes-visual-bell-config)
  (doom-themes-neotree-config)
  (doom-themes-org-config)
  :custom
  (doom-themes-enable-bold t)
  (doom-themes-enable-italic t)
  (doom-neotree-file-icons 1)
  (doom-neotree-enable-variable-pitch nil))

(set-default-font "DejaVu Sans Mono Nerd Font")
(set-face-attribute 'default nil :height 110)
(setq-default line-spacing nil)

(use-package find-file-in-project)

(use-package flycheck
  :config
  (global-flycheck-mode)
  :custom
  (flycheck-highlighting-mode nil)
  (flycheck-indication-mode 'left-fringe))

(use-package powerline)

(use-package airline-themes
  :after powerline
  :config
  (load-theme 'airline-doom-one))

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
