(defun config-evil ()
  (define-key evil-normal-state-map [escape] 'keyboard-quit)
  (define-key evil-visual-state-map [escape] 'keyboard-quit)
  (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
  (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

  (dolist (mode '(dired-mode neotree-mode eshell-mode term-mode))
    (add-to-list 'evil-emacs-state-modes mode))
  (delete 'term-mode evil-insert-state-modes)
  (delete 'eshell-mode evil-insert-state-modes))

(use-package evil
  :custom
  (evil-echo-state nil)
  :config
  (add-hook 'evil-mode-hook 'config-evil)
  (evil-mode 1))

(use-package evil-commentary
  :config (evil-commentary-mode t))

(use-package evil-surround
  :config (global-evil-surround-mode t))

(provide 'init-evil)
