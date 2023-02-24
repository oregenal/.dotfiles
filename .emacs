(load-theme 'tango-dark)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(column-number-mode t)
;;(display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)
(package-initialize)
(global-linum-mode 1)
(ido-mode 1)

(global-set-key [f5] 'compile)

;; The value in 1/10pt, so 100 will give 10pt.
(set-face-attribute 'default nil :height 180)

;; Replacing bell with visible effect
(setq visible-bell t)

;;(global-unset-key (kbd "C-z")) ; I don't know what is it.

;;(package-initialize)
(require 'package)
(add-to-list 'package-archives' ("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(markdown-mode undo-tree persistent-soft)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
