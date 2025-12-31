
 (global-set-key (kbd "C-f") (lambda ()
 (interactive) (find-alternate-file (read-file-name ""))))

 (global-set-key (kbd "C-h k") 'describe-key)
 (global-set-key (kbd "C-h s") 'shell-command)
 (global-set-key (kbd "C-h e") 'eval-expression)
 (global-set-key (kbd "C-h r") 're-builder)

 (global-set-key (kbd "C-h h") (lambda ()
 (interactive) (prin1 (text-properties-at (point)))))
