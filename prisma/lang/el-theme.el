
 (deftheme el "Elisp theme.")

 (defvar variant-0 "#FAABFF" "Color variant 0.")
 (defvar variant-1 "#FADEFF" "Color variant 1.")
 (defvar variant-2 "#F780FF" "Color variant 2.")

 (custom-theme-set-faces 'el
			
  `(font-lock-keyword-face ((t :foreground ,variant-0 :weight ultra-bold)))
  `(font-lock-constant-face ((t :foreground ,variant-0)))
  `(lisp-dialect-fallback-face ((t :foreground ,variant-0)))
			       
  `(font-lock-variable-name-face ((t :foreground ,variant-1)))
  `(font-lock-type-face ((t :foreground ,variant-1)))
  `(font-lock-builtin-face ((t :foreground ,variant-1)))
  `(punctuation-face ((t :foreground ,variant-1)))

  `(font-lock-string-face ((t :foreground ,variant-2 :weight ultra-bold)))
  `(font-lock-function-name-face ((t :foreground ,variant-2)))
  `(lisp-builtin-values-face ((t :foreground ,variant-2 :weight ultra-bold)))
  `(numeric-values-face ((t :foreground ,variant-2 :weight ultra-bold))))

 (provide-theme 'el)

