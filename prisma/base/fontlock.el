
 (load-file "~/.config/emacs/prisma/base/faces.el")

 (dolist (mode '(emacs-lisp-mode lisp-mode scheme-mode))

 (font-lock-add-keywords mode 

  `(("\\<\\(nil\\|t\\)\\>" 1 'lisp-builtin-values-face append)

   ("\\([a-z][a-z-]+[0-9]*\\)" 1 (unless (get-text-property (match-beginning 1) 'face) 
    'lisp-dialect-fallback-face)  
     keep))))

 (add-hook 'after-change-major-mode-hook (lambda () (font-lock-add-keywords nil
									   
  `(("\\(-?[0-9]+\\.?[0-9]*\\)" 0 (unless (get-text-property (match-beginning 0) 'face) 
    'numeric-values-face)  
     keep)

   ("[][(){}\\+\\-/\\*=<>!&|$.;:~'?`]" 0 'punctuation-face append)) 
    'append)))
