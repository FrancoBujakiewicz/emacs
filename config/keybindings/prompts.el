
 (global-set-key (kbd "M-f") (lambda ()
 (interactive) (find-alternate-file (read-file-name ""))))

 (global-set-key (kbd "C-h s") 'shell-command)
 (global-set-key (kbd "C-h e") 'eval-expression)

 (global-set-key (kbd "C-h h") (lambda ()
 (interactive) (prin1 (text-properties-at (point)))))

 ;; Keymap help mini-buffer when that binding. I removed it.

 (global-set-key (kbd "C-h C-h") 'ignore)
