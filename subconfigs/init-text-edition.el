;;no tab-characters, only spaces
(setq-default indent-tabs-mode nil)
(setq-default highlight-tabs t)

;;remove whitespace before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;auto-pair braces
(require-package 'autopair)
(autopair-global-mode)
;;and show matching parens
(show-paren-mode 1)




(provide 'init-text-edition)
