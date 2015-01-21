;; set up ctags
(setq path-to-ctags "/usr/local/bin/ctags")

    (defun create-tags (dir-name)
      "Create tags file, asks for dir"
      (interactive "DDirectory: ")
      (shell-command
       (format "%s -f %s/tags -eR %s" path-to-ctags (directory-file-name dir-name) (directory-file-name dir-name)))
      )

(provide 'init-tags)
