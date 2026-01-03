
 (ignore-errors (load-file "~/.config/emacs/prisma/base/faces.el"))

 (defun apply-face-safely (target group) "Apply target face only if there's no face."

  (let ((current-face (get-text-property (match-beginning group) 'face)))

  (cond
 
   ((null current-face) target)

   ((listp current-face)
    (if (and (memq 'font-lock-warning-face current-face)
    (= (length current-face) 1)) target))

    (t nil))))

 (dolist (mode '(emacs-lisp-mode lisp-mode scheme-mode)) (font-lock-add-keywords mode

  `(("\\<\\(nil\\|t\\)\\>" 1 (apply-face-safely 'lisp-dialect-boolean-face 1) prepend)

   ("\\([a-z][-a-z]*\\([0-9]+\\)?\\)" 1 
    (apply-face-safely 'lisp-dialect-fallback-face 1) prepend)) t))

 (add-hook 'after-change-major-mode-hook (lambda () (font-lock-add-keywords nil

  `(("\\(\\_<-?[0-9]+\\.?[0-9]*\\)" 0 'numeric-values-face keep)

   ("[][(){}\\+\\-/\\*=<>!&|$.;:~'?`#]" 0 
    (apply-face-safely 'punctuation-face 0) prepend)) t)))
