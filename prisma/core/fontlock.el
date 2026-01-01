
 (load-file "~/.config/emacs/prisma/core/faces.el")

 (dolist (mode '(emacs-lisp-mode lisp-mode scheme-mode))

 (font-lock-add-keywords mode

  `(("\\<\\(nil\\|t\\)\\>" 1 'lisp-builtin-values-face prepend)

   ("\\([a-z][-a-z]*\\(?:-[0-9]+\\)?\\)" 1 
    (unless (get-text-property (match-beginning 1) 'face) 
    'lisp-dialect-fallback-face) keep)) t))

 (add-hook 'after-change-major-mode-hook (lambda () (font-lock-add-keywords nil

  `(("\\(\\_<-?[0-9]+\\.?[0-9]*\\_>\\)" 0 'numeric-values-face keep)

   ("[][(){}\\+\\-/\\*=<>!&|$.;:~'?`]" 0 'punctuation-face append)))))
