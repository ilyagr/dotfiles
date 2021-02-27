;;; .Emacs --- Emacs initialization file -*- lexical-binding: t; -*-
(require 'package)
(package-initialize)
  (add-to-list
   'package-archives
   ;; '("melpa" . "http://stable.melpa.org/packages/") ; many packages won't show if using stable
   '("melpa" . "https://melpa.org/packages/")
   t)

(when (not (display-graphic-p))
  (menu-bar-mode -1))
(xterm-mouse-mode t)

;; Symbolic link to Git-controlled source file; follow link?
(setq vc-follow-symlinks t)

(eval-when-compile (require 'use-package))

;; !!! M-x describe-bindings a.k.a. C-h b!!! Also C-h m
;; Possibly see also https://github.com/emacs-helm/helm-descbinds
(use-package evil
  ;; :ensure t
  :init
  (setq evil-want-C-w-in-emacs-state t)
  (setq evil-want-minibuffer t)
  ;; evil-collection
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  ;; END evil-collection
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  ;; :ensure t
  :config
  (evil-collection-init))

;; Helm
(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)  ;; Default is execute-extended-command

;; Ace-window
(global-set-key (kbd "M-o") 'ace-window) ;; Or C-x o

;; Magit
(global-set-key (kbd "C-c g")
                'magit-file-dispatch)    ;; Also C-x g and C-x M-g
(with-eval-after-load 'magit-mode
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t))
;; There is magit-file-watcher, not recommended

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
 '(custom-enabled-themes '(tango-dark))
 '(helm-minibuffer-history-key "M-p")
 '(package-selected-packages
   '(helm-descbinds ztree evil-collection zenburn-theme yasnippet-snippets yaml-mode which-key use-package tabbar solarized-theme smex session rust-mode puppet-mode pod-mode muttrc-mode mutt-alias lsp-ui initsplit ido-completing-read+ htmlize graphviz-dot-mode gitignore-mode gitconfig-mode gitattributes-mode git-modes folding evil-paredit ess eproject editorconfig diminish csv-mode counsel company-lsp color-theme-modern browse-kill-ring boxquote bm bar-cursor apache-mode ace-window)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "PfEd" :slant normal :weight normal :height 143 :width normal)))))
