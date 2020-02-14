;; Do not show the startup screen
(setq inhibit-startup-message t)

;; display relative line numbers
(setq display-line-numbers 'relative)

;; disable tool bar, menu bar
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)

;; highlight current line
(global-hl-line-mode t)

;; add line and column numbers
(line-number-mode t)
(column-number-mode t)

(require 'package)
;; Any add to list for package-archives (to add marmalade or melpa) goes here
(add-to-list 'package-archives 
    '("MELPA" .
      "http://melpa.milkbox.net/packages/"))
(package-initialize)

(package-install 'use-package)

(setq use-package-always-ensure t)

(use-package auctex
  :defer t)
(use-package dracula-theme)
(use-package ess)
(use-package magit)
(use-package move-text)
(use-package multiple-cursors)
(use-package yaml-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("5f1bd7f67dc1598977e69c6a0aed3c926f49581fdf395a6246f9bc1df86cb030" default)))
 '(display-line-numbers (quote relative))
 '(package-selected-packages
   (quote
    (yaml-mode use-package multiple-cursors move-text magit ess dracula-theme auctex)))
 '(show-paren-style (quote parenthesis)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; load dracula theme
(load-theme 'dracula)

;; use default keybinds for move-text
(move-text-default-bindings)

;; setup magit keybinds
(global-set-key (kbd "C-x g") 'magit-status)



(setenv "PATH" (concat (getenv "PATH") ":/opt/texlive/2020/bin/x86_64-linux/"))  
(setq exec-path (append exec-path '(":/opt/texlive/2020/bin/x86_64-linux")))


;; setup auctex options
(setq-default TeX-engine 'xetex)
(setq-default TeX-PDF-mode t)
