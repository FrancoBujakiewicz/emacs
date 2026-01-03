
 (global-set-key (kbd "<left>") 'backward-char)
 (global-set-key (kbd "<right>") 'forward-char)
 (global-set-key (kbd "<up>") 'previous-line)
 (global-set-key (kbd "<down>") 'next-line)

 (global-set-key (kbd "<home>") 'beginning-of-line)
 (global-set-key (kbd "<end>") 'end-of-line)

 (global-set-key (kbd "C-<up>") 'beginning-of-buffer)
 (global-set-key (kbd "C-<down>") 'end-of-buffer)

 (global-set-key (kbd "C-g") 'goto-line)
 
 (global-set-key (kbd "RET") 'newline)
 (global-set-key (kbd "DEL") 'delete-backward-char)
 (define-key minibuffer-local-map (kbd "DEL") 'delete-backward-char)
