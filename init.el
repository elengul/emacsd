;;; -*- lexical-binding: t; -*-

(add-to-list 'load-path "~/.emacs.d/lisp")

(setq-default c-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq-default comment-column 0)

(defvar jah/compile-command "make")

(defun jah/set-compile-command (command)
  (interactive (list (read-string "compile-command" jah/compile_command)))
  (setq jah/compile-command command))

(defun jah/compile ()
  (interactive)
  (compile jah/compile-command))

(defun jah/make-compile-command (target)
  (lambda ()
    (interactive)
    (compile (concat jah/compile-command " " target))))

(global-set-key (kbd "C-x c") 'jah/compile-command)
(global-set-key (kbd "C-x C") (jah/make-compile-command "clean"))
(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "<f1>") 'next-error)
(global-set-key (kbd "<f12>") 'revert-buffer)

(defalias 'yes-or-no-p 'y-or-n-p)

(autoload 'nasm-mode "nasm-mode" nil t nil)
(add-to-list 'auto-mode-alist '("\\.s$" . nasm-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
