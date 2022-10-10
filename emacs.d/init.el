;; -*- lexical-binding: t; -*-
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)
(column-number-mode 1)

(evil-mode 1)

(setq
 inhibit-startup-message t
 display-line-numbers-type 'relative
 make-backup-files nil
 default-directory "c:/Users/Юзер/Desktop"
 fill-column 79)

(add-to-list
 'default-frame-alist
 '(font . "JetBrains Mono-10"))

(custom-set-variables
 '(custom-enabled-themes '(kanagawa))
 '(package-selected-packages
   '(md-readme markdown-preview-mode haskell-mode doom-themes evil
     gruvbox-theme)))
