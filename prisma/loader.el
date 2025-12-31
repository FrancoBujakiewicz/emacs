
 (load-file "~/.config/emacs/prisma/base/theme.el")

 (add-to-list 'custom-theme-load-path "~/.config/emacs/prisma/lang/")

 (defun load-language-theme () "Load theme by file extension."
       
  (when buffer-file-name (let*
				   
   ((ext (file-name-extension buffer-file-name))
   (theme-name (when ext (intern ext))))
      
   (mapc 'disable-theme custom-enabled-themes)
      
   (when ext (ignore-errors (load-theme theme-name t))))))

 (add-hook 'find-file-hook 'load-language-theme)
 (add-hook 'window-buffer-change-functions (lambda (frame) (load-language-theme)))

