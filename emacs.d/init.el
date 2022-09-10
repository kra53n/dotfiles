;; -*- lexical-binding: t; -*-
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-display-line-numbers-mode 1)

(setq inhibit-startup-message t)
(setq display-line-numbers-type 'relative)

(custom-set-variables '(custom-enabled-themes '(gruvbox-dark-hard))
		      '(custom-safe-themes
			'("d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7" default))
		      '(package-archives
			'(("gnu" . "https://elpa.gnu.org/packages/")
			  ("melpa" . "https://melpa.org/packages/")))
		      '(package-selected-packages '(gruvbox-theme)))

(add-to-list 'default-frame-alist
	     '(font . "JetBrains Mono NL-10"))
