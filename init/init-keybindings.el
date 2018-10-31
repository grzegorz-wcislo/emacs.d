(use-package buffer-move)
(winner-mode 1)

(use-package general)

(general-define-key
 "M-x" 'counsel-M-x)

(defun neotree-project-dir ()
    "Open NeoTree using the git root."
    (interactive)
    (let ((project-dir (projectile-project-root))
          (file-name (buffer-file-name)))
      (neotree-toggle)
      (if project-dir
          (if (neo-global--window-exists-p)
              (progn
                (neotree-dir project-dir)
                (neotree-find file-name))))))

(general-define-key
 :states '(normal insert motion emacs)
 :prefix "SPC"
 :non-normal-prefix "M-SPC"
 :prefix-map 'leader
 ;; General
 ":" 'counsel-M-x
 ;; Buffers
 "b" '(:ignore t)
 "bb" 'ivy-switch-buffer
 "bd" 'kill-this-buffer
 "bn" 'evil-buffer-new
 ;; Windows
 "w" '(:ignore t)
 "w\\" 'split-window-right
 "w-" 'split-window-below
 "w=" 'balance-windows
 "wo" 'delete-other-windows
 "wh" 'winner-undo
 "wl" 'winner-redo
 ;; Jump
 "j" '(:ignore t)
 "jj" 'dumb-jump-go
 "jb" 'dumb-jump-back
 ;; Help
 "h" '(:ignore t)
 "hk" 'describe-key
 "hm" 'describe-mode
 "hf" 'counsel-describe-function
 "hv" 'counsel-describe-variable
 ;; Git
 "g" '(:ignore t)
 "gs" 'magit-status
 "gd" '(:ignore t)
 "gd" 'magit-diff-unstaged
 "gl" 'magit-log-current
 ;; VCS Hunks
 "h" '(:ignore t)
 "hn" 'git-gutter:next-hunk
 "hp" 'git-gutter:previous-hunk
 "hd" 'git-gutter:popup-hunk
 "hs" 'git-gutter:stage-hunk
 "hr" 'git-gutter:revert-hunk
 ;; Errors
 "e" '(:ignore t)
 "ed" 'flycheck-disable-checker
 "ee" 'flycheck-list-errors
 "em" 'flycheck-mode
 "en" 'flycheck-next-error
 "ep" 'flycheck-previous-error
 "eb" 'flycheck-buffer
 ;; Project
 "p" '(:ignore t)
 "pp" 'projectile-switch-project
 "pf" 'projectile-find-file
 "pc" 'projectile-compile-project
 "pb" 'projectile-switch-to-buffer
 "pk" 'projectile-kill-buffers
 "ps" 'projectile-run-eshell
 "pt" 'projectile-toggle-between-implementation-and-test
 )

(general-define-key
 "M-h" 'evil-window-left
 "M-j" 'evil-window-down
 "M-k" 'evil-window-up
 "M-l" 'evil-window-right
 "M-e" 'neotree-project-dir
 "M-q" 'delete-window)

(general-evil-define-key 'normal help-mode-map
   "q" 'quit-window)

(general-evil-define-key 'normal diff-mode-map
   "q" 'quit-window)

(general-evil-define-key 'normal flycheck-error-list-mode-map
   "q" 'quit-window)

(provide 'init-keybindings)
