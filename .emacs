;;; .Emacs --- Emacs initialization file -*- lexical-binding: t; -*-

(when (not (display-graphic-p))
  (menu-bar-mode -1))
(xterm-mouse-mode t)

;; Evil
(setq evil-want-C-w-in-emacs-state t)
(setq evil-want-minibuffer t)
(require 'evil)                          ;; use C-z to disable for a keystroke
(evil-mode 1)

;; Ace-window
(global-set-key (kbd "M-o") 'ace-window) ;; Or C-x o

;; Magit
(global-set-key (kbd "C-c g")
                'magit-file-dispatch)    ;; Also C-x g and C-x M-g
(add-hook 'after-save-hook
          'magit-after-save-refresh-status t)

(let ((site-settings "~/.emacs.site.el"))
 (when (file-exists-p site-settings)
   (load-file site-settings))
)
;;; .emacs ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 143 :width normal)))))
