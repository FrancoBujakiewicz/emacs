
 (setq shift-select-mode t)

 (global-set-key (kbd "C-x s") 'mark-whole-buffer)

 (global-set-key (kbd "C-c c") 'kill-ring-save)
 (global-set-key (kbd "C-c x") 'kill-region)

 (global-set-key (kbd "C-p") (lambda () (interactive)
 (when (use-region-p) (delete-region (region-beginning) (region-end))) (yank)))
