
 (ignore-errors (load-file "~/.config/emacs/prisma/loader.el"))

 (dolist (file (directory-files-recursively "~/.config/emacs/config/" "\\.el$"))
 (ignore-errors (load-file file)))

