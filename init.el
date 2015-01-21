(setq user-full-name "Lyman Gillispie")
(setq user-mail-address "l@lygi.me")

;; stuff to read he right stuff on the path
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell
      (replace-regexp-in-string "[[:space:]\n]*$" ""
        (shell-command-to-string "$SHELL -l -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(when (equal system-type 'darwin) (set-exec-path-from-shell-PATH))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("806d8c827b214f5f60348114bd27c6dcb5d19047f7ac482ad61e8077a6c5ea60" "57f8801351e8b7677923c9fe547f7e19f38c99b80d68c34da6fa9b94dc6d3297" default)))
 '(scheme-program-name "scheme"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path (expand-file-name "subconfigs" user-emacs-directory))


(require 'init-packages)
(require 'init-misc-plugins)
(require 'init-evil)
(require 'init-programming)
(require 'init-colors)
(require 'init-text-edition)
(require 'init-interface)
(require 'init-autocomplete)
(require 'init-flycheck)
(require 'init-tags)
(require 'init-persistence)
;;(require 'init-auctex)


;;;auxtex settings

(provide 'init)
