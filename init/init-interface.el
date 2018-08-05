(defalias 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-screen t
      inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      initial-scratch-message nil)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)

(global-display-line-numbers-mode t)
(column-number-mode t)

(set-frame-font "DejaVu Sans Mono Nerd Font")
(set-face-attribute 'default nil :height 110)
(setq-default line-spacing nil)

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

(use-package powerline)

(use-package airline-themes
  :after powerline
  :config
  (load-theme 'airline-doom-one))

(provide 'init-interface)
