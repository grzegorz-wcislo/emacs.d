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

(setq show-paren-delay 0.025
      show-paren-highlight-openparen t
      show-paren-when-point-inside-paren t)
(show-paren-mode)

(add-hook 'text-mode-hook (lambda () (setq display-line-numbers 'relative)))
(add-hook 'prog-mode-hook (lambda () (setq display-line-numbers 'relative)))

(add-to-list 'default-frame-alist '(font . "GohuFont"))
(setq-default line-spacing nil)

(use-package rainbow-delimiters
  :hook
  (prog-mode . rainbow-delimiters-mode))

(use-package solaire-mode
  :hook
  ((change-major-mode after-revert ediff-prepare-buffer) . turn-on-solaire-mode)
  :config
  (add-hook 'minibuffer-setup-hook #'solaire-mode-in-minibuffer))

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

(use-package doom-modeline
  :after all-the-icons
  :after doom-themes
  :hook (after-init . doom-modeline-init))

(use-package shackle
  :config
  (shackle-mode)
  :custom
  (shackle-rules '((neotree-mode :align left)))
  (shackle-default-rule '(:select t)))

(provide 'init-interface)
