
 (setq-default mode-line-format nil)
 (menu-bar-mode -1)
 (which-key-mode -1)

 (setq

  make-backup-files nil
  auto-save-default nil
  auto-save-list-file-prefix nil

  initial-scratch-message nil
  inhibit-startup-message t
  inhibit-message t)

 (when (and (fboundp 'native-comp-available-p) (native-comp-available-p))
 (add-to-list 'native-comp-eln-load-path
 (expand-file-name "~/.cache/emacs/eln-cache/"))
 (setq native-compile-target-directory
 (expand-file-name "~/.cache/emacs/eln-cache/")))

 ;; Supress edges of buffer messages and others like "Quit".

 (setq command-error-function '(lambda ()
 (unless (string-match-p "^\\(Beginning\\|End\\) of buffer"
 (error-message-string data)) 
 (let ((inhibit-message t))
 (command-error-default-function data context caller)))))

 ;; Cleaning the entire keymap.

 (use-global-map (make-sparse-keymap))

 (set-input-mode nil nil 0)

 ;; Enabling type printeable characters.

 (global-set-key [remap self-insert-command] 'self-insert-command)

 ;; Reassign all characters to type they.

 (let ((i 32))
 (while (< i 256) (global-set-key (vector i) 'self-insert-command)
 (setq i (1+ i))))

 (add-hook 'emacs-startup-hook (lambda ()            
 (when (cl-some 'buffer-file-name (buffer-list)) (kill-buffer "*scratch*"))))

