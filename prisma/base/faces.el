
 (defface punctuation-face '((t :inherit default)) "Parentheses, operators and others.") 

 (defface lisp-dialect-fallback-face '((t :inherit default))
  "For ones doesn't has a face in Lisp dialects.")

 (defface lisp-dialect-boolean-face '((t :inherit default))
  "Lisp builtin values like nil or t.")

 (defface numeric-values-face '((t :inherit default))
  "Face for numeric values.")
 
 (defface empty-face
  '((t :inherit nil :foreground unspecified :background unspecified
       :underline nil :weight unspecified :slant unspecified))
  "Face with no attributes; used to neutralize other faces." :group 'faces)

 (add-hook 'after-change-major-mode-hook (lambda () 
  (setq-local face-remapping-alist (cons '(font-lock-warning-face empty-face)
  (assq-delete-all 'font-lock-warning-face face-remapping-alist)))))
