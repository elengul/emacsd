(let ((init "~/.emacs.d/lisp/init.el"))
  (if (file-exists-p init)
      (load-file init)
    (load-file (substring init 0 -1))))
