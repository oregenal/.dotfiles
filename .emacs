(load-theme 'tango-dark)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Disabling startup screen.
(setq inhibit-startup-message t)

;; Disabling suspend-frame
(global-unset-key (kbd "C-z"))

(setq make-backup-files nil)

;;(global-linum-mode 1)
(global-display-line-numbers-mode 1)
(ido-mode 1)

;; Set tab width.
(setq-default indent-tabs-mode t)
(setq-default tab-width 4) ; Assuming you want your tabs to be four spaces wide
(defvaralias 'c-basic-offset 'tab-width)

(global-set-key [f5] 'compile)

;; The value in 1/10pt, so 100 will give 10pt.
(set-face-attribute 'default nil :height 200)

;; Replacing bell with visible effect
(setq visible-bell t)

;;(package-initialize)
(require 'package)
(add-to-list 'package-archives' ("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit markdown-mode undo-tree persistent-soft)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
