;;start scratch in text mode (usefull to get a faster Emacs load time
;; because it avoids autoloads of elisp modes)
(setq initial-major-mode 'text-mode)

;;similarly, disable that pesky *GNU Emacs* buffer
(setq inhibit-startup-screen t)

;;empty scratch buffer
(setq initial-scratch-message nil)

;;auto-refresh dired
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;;fill-line indicator gets set globally
;;fill-line-indicator
(require-package 'fill-column-indicator)
(setq fci-rule-column 80)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

;;smooth scrolling
(setq scroll-margin 5)
(setq scroll-step 1)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))


(provide 'init-interface)
