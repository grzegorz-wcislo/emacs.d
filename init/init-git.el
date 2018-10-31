(use-package magit)

(use-package gitignore-mode
  :mode ("/\\.gitignore$"
         "/\\.git/info/exclude$"
         "/git/ignore$"))

(use-package git-gutter
  :custom
  (git-gutter:window-width 1)
  (git-gutter:added-sign "|")
  (git-gutter:deleted-sign "|")
  (git-gutter:modified-sign "|")
  :config
  (global-git-gutter-mode))

(provide 'init-git)
