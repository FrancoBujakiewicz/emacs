
 (deftheme conf "Conf theme.")

 (defvar base "#F278FF" "Base color.")

 (defvar variant-0 "#FAC4FF" "Color variant 0.")
 (defvar variant-1 "#DB5AED" "Color variant 1.")
   
 (custom-theme-set-faces 'conf
			
  `(font-lock-keyword-face ((t :foreground ,base)))
  `(font-lock-builtin-face ((t :foreground ,base)))
  
  `(font-lock-variable-name-face ((t :foreground ,variant-0)))
  `(font-lock-type-face ((t :foreground ,variant-0)))
  `(punctuation-face ((t :foreground ,variant-0)))

  `(font-lock-string-face ((t :foreground ,variant-1))))

 (provide-theme 'conf)
