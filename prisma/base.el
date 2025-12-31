
 (defface punctuation-face '((t :inherit default)) "Parentheses, operators and others.") 

 (defface lisp-dialect-fallback-face '((t :inherit default))
  "For ones doesn't has a face in Lisp dialects.")

 (defface lisp-builtin-values-face '((t :inherit default))
  "Lisp builtin values like nil or t.")

 (add-hook 'after-change-major-mode-hook (lambda () (font-lock-add-keywords nil
									   
  `(("\\<\\(nil\\|t\\)\\>" 1 'lisp-builtin-values-face append)
    ("\\<-?[0-9]+\\.?[0-9]*\\(?:[eE][+-]?[0-9]+\\)?\\>" 0 'lisp-builtin-values-face append)

   ("[][(){}\\+\\-/\\*=<>!&|$.;:~'?`]" 0 'punctuation-face append)

   ("[^a-zA-Z0-9-]\\([',]?[a-zA-Z0-9-]+\\)" 1
   (unless (get-text-property (match-beginning 1) 'face) 'lisp-dialect-fallback-face) 
    keep)) 
   'append)))

 (set-face-attribute 'region nil :background 'unspecified :foreground "#949494")
 (set-face-attribute 'font-lock-comment-delimiter-face nil :foreground "#949494")
 (set-face-attribute 'font-lock-comment-face nil :foreground "#949494")

 (set-face-attribute 'show-paren-match nil 
  :background 'unspecified :foreground "#FFFFFF" :weight 'ultra-bold)

 (set-face-attribute 'show-paren-mismatch nil 
  :background 'unspecified :foreground "#FFFFFF" :weight 'ultra-bold)

