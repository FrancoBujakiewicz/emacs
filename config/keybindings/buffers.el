
 (global-set-key (kbd "C-b")
 (lambda () (interactive) (switch-to-buffer "*scratch*")
 (find-alternate-file (read-file-name ""))))

 (global-set-key (kbd "C-x k")
 (lambda () (interactive) (kill-buffer (current-buffer))
 (while (not (or (buffer-file-name) (string-prefix-p "*scratch" (buffer-name))))
 (next-buffer))))

 (global-set-key (kbd "C-s") 'save-buffer)
