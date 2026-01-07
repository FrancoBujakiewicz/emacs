
 (put 'dired-find-alternate-file 'disabled nil)

 (setq dired-listing-switches "-al --group-directories-first")

 (with-eval-after-load 'dired 

 (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
 (define-key dired-mode-map (kbd "q") nil))

 (add-hook 'dired-mode-hook 'dired-hide-details-mode)

 (add-hook 'dired-after-readin-hook (lambda ()

  (goto-char (point-min))

  (let ((inhibit-read-only t))

   (delete-region (point) (progn (forward-line 1) (point)))
   (insert "\n")
   (delete-region (point) (progn (forward-line 1) (point))))))
