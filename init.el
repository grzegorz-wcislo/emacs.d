(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file 'noerror)

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))

(setq make-backup-files nil)

(require 'init-packages)
(require 'init-languages)
(require 'init-interface)
(require 'init-editor)
(require 'init-keybindings)
(require 'init-evil)
(require 'init-git)
(require 'init-scratch)

(server-start)

(provide 'init)
