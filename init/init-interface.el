(defalias 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs (lambda (_) (y-or-n-p "››› Quit?")))

(setq inhibit-startup-screen t
      inhibit-splash-screen t
      inhibit-startup-echo-area-message t
      initial-scratch-message nil)

(setq-default indicate-buffer-boundaries 'left
              indicate-empty-lines nil
              fringes-outside-margins t
              fringe-indicator-alist
              (delq
               (assq 'continuation fringe-indicator-alist)
               fringe-indicator-alist))

(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(blink-cursor-mode 0)

(setq show-paren-delay 0.075
      show-paren-highlight-openparen t
      show-paren-when-point-inside-paren t)
(show-paren-mode)

(global-display-line-numbers-mode)

(add-to-list 'default-frame-alist '(font . "GohuFont"))
(setq-default line-spacing nil)

(use-package ivy
  :custom
  (ivy-use-virtual-buffers t)
  (ivy-count-format "%d/%d "))

(use-package counsel
  :after ivy)

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
  (load-theme 'airline-doom-one)
  :custom
  (airline-display-directory nil))

(use-package shackle
  :config
  (shackle-mode)
  :custom
  (shackle-rules '((neotree-mode :align left)))
  (shackle-default-rule '(:select t)))

(provide 'init-interface)
