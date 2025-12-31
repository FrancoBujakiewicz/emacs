
 (load-file "~/.config/emacs/prisma/base/faces.el")

 (add-hook 'after-change-major-mode-hook (lambda () (font-lock-add-keywords nil
									   
  `(("\\<\\(nil\\|t\\)\\>" 1 'lisp-builtin-values-face append)

    ("\\(?:^\\|[^a-zA-Z0-9-]\\)\\(-?[0-9]+\\.?[0-9]*\\(?:[eE][+-]?[0-9]+\\)?\\)" 
     0 'numeric-values-face append)

   ("[][(){}\\+\\-/\\*=<>!&|$.;:~'?`]" 0 'punctuation-face append)

   ("\\([a-z0-9-]+\\)" 1 (unless (get-text-property (match-beginning 1) 'face) 
    'lisp-dialect-fallback-face) 
    keep)) 
    'append)))
