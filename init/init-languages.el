(use-package rjsx-mode
  :mode "\\.js\\'")

(use-package restclient
  :mode (("\\.http\\'" . restclient-mode)))

(use-package haskell-mode
  :mode "\\.hs\\'")

(use-package elm-mode)

(use-package elixir-mode
  :mode "\\.ex\\'")

(use-package alchemist)

(use-package tex
  :ensure auctex)

(provide 'init-languages)
