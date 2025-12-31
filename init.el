
 (require 're-builder)
 (setq reb-re-syntax 'string)

 (dolist (file (directory-files-recursively "~/.config/emacs/config/" "\\.el$"))
 (load-file file))

 (load-file "~/.config/emacs/prisma/loader.el")

 (setq electric-indent-mode nil)

