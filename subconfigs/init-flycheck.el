(require-package 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

(global-flycheck-mode t)

(provide 'init-flycheck)
