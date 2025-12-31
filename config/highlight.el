
 ;; Text highlight "animations" for certain actions

 (defun highlight-region (start end) "Highlight region white foreground for a moment."
       
  (let ((overlay (make-overlay start end)))
  (overlay-put overlay 'face '(:foreground "#FFFFFF" :weight ultra-bold))
  (run-with-timer 0.2 nil (lambda (ov) (delete-overlay ov)) overlay)))

 (advice-add 'kill-ring-save :after (lambda (&rest _)
  (when (use-region-p) (highlight-region (region-beginning) (region-end)))))

 (advice-add 'save-buffer :after (lambda (&rest _)
  (highlight-region (point-min) (point-max))))

