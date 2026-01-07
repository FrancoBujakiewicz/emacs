
 (put 'dired-find-alternate-file 'disabled nil)

 (setq dired-listing-switches "-1al --group-directories-first")

 (with-eval-after-load 'dired 

 (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
 (define-key dired-mode-map (kbd "q") nil))

 (add-hook 'dired-mode-hook 'dired-hide-details-mode)
