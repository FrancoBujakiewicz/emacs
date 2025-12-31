
  (setq interprogram-cut-function
  (lambda (text) (with-temp-buffer (insert text)
  (call-process-region (point-min) (point-max)
  "xclip" nil 0 nil "-i" "-selection" "clipboard"))))

  (setq interprogram-paste-function (lambda () (let
  ((xclip-output (shell-command-to-string "xclip -o -selection clipboard")))
  (unless (string= (car kill-ring) xclip-output) xclip-output))))

