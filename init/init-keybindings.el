(use-package general)
(use-package buffer-move)
(winner-mode 1)

(general-define-key
 "M-x" 'counsel-M-x)

(general-define-key
 "M-h" 'windmove-left
 "M-j" 'windmove-down
 "M-k" 'windmove-up
 "M-l" 'windmove-right
 "M-H" 'buf-move-left
 "M-J" 'buf-move-down
 "M-K" 'buf-move-up
 "M-L" 'buf-move-right
 "M-q" 'delete-window)

(general-define-key
 :states 'normal
 :prefix "SPC"
 :non-normal-prefix "M-SPC"
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
 ;; Files
 "f" '(:ignore t)
 "ff" 'counsel-find-file
 "fb" 'neotree
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
 "gl" 'magit-log-current)

(provide 'init-keybindings)
