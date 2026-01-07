
 (fido-mode 1)

 (setq
 
  icomplete-prospects-height 1
  icomplete-separator " ")

 (advice-add 'icomplete-completions :filter-return (lambda (completions)
 (replace-regexp-in-string "[{}]" "" completions)))
