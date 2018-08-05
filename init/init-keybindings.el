(global-set-key (kbd "M-h") 'windmove-left)
(global-set-key (kbd "M-j") 'windmove-down)
(global-set-key (kbd "M-k") 'windmove-up)
(global-set-key (kbd "M-l") 'windmove-right)
(global-set-key (kbd "M-q") 'delete-window)
(global-set-key (kbd "M-\\") 'split-window-right)
(global-set-key (kbd "M--") 'split-window-below)

(use-package buffer-move
  :bind (("M-H" . 'buf-move-left)
         ("M-J" . 'buf-move-down)
         ("M-K" . 'buf-move-up)
         ("M-L" . 'buf-move-right)))

(provide 'init-keybindings)
