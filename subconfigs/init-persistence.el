;; create backup files on a directory inside dotemacs
    (setq backup-directory-alist '(("." . "~/.emacs.d/backups")))

;; Remember last edit positions
    (require-package 'saveplace)
    (setq save-place-file "~/.emacs.d/saveplace")
    (setq-default save-place t)

;; minibuffer history
    (require-package 'savehist)
    (setq savehist-file "~/.emacs.d/savehist"
          savehist-additional-variables '(search ring regexp-search-ring)
          savehist-autosave-interval 60)
    (setq-default history-length 1000)
    (savehist-mode +1)

;; bookmarks
    (setq bookmark-default-file "~/.emacs.d/bookmarks"
          bookmark-save-flag 1) ;; save after every change


;; lots of recent files
    (require 'recentf)
    (setq recentf-save-file "~/.emacs.d/recentf"
          recentf-max-saved-items 1000
          recentf-max-menu-items 500)
    (add-to-list 'recentf-exclude "COMMIT_EDITMSG\\'")
    (recentf-mode +1)
    (run-with-timer 1800 1800 'recentf-save-list)

(provide 'init-persistence)
