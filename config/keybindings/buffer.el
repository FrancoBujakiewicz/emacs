 
 (require 'bs)

 (setq bs-configurations '(("files" nil nil 
 "^\\*\\(Messages\\|Completions\\)\\*$" nil nil)))

 (global-set-key (kbd "C-<right>") 'next-buffer) ;;'bs-cycle-next)
 (global-set-key (kbd "C-<left>") 'previous-buffer) ;;'bs-cycle-previous)

 (global-set-key (kbd "C-b")
 (lambda () (interactive) (switch-to-buffer "*scratch*")
 (find-alternate-file (read-file-name ""))))

 (global-set-key (kbd "C-x k")
 (lambda () (interactive) (kill-buffer (current-buffer))
 (while (not (or (buffer-file-name) (string-prefix-p "*scratch" (buffer-name))))
 (next-buffer))))

 (global-set-key (kbd "C-s") 'save-buffer)
