(setenv "LC_ALL" "en_US.UTF-8")
(setenv "LANG" "en_US")

(setq initial-scratch-message
      (format
       ";; %s\n\n"
       (replace-regexp-in-string
        "\n" "\n;; " ; comment each line
        (replace-regexp-in-string
         "\n$" ""    ; remove trailing linebreak
         (shell-command-to-string "fortune | cowsay")))))

(provide 'init-scratch)
