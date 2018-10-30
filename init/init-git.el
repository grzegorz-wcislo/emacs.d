(use-package magit)

(use-package gitignore-mode
  :mode ("/\\.gitignore$"
         "/\\.git/info/exclude$"
         "/git/ignore$"))

(use-package git-gutter
  :config
  (global-git-gutter-mode))

(provide 'init-git)
