;; My own config, useful in plain Emacs or Spacemacs, goes here

(defun ilya/user-config ()
  (message "user-config")
  (magit-wip-mode)  ;; Experiment!  Use M-x magit-wip-logw

  ;; Org-mode
  ;; This is an org-mode default that Spacemacs changes to "~/org/notes.org". Perhaps that's better?
  (setq org-default-notes-file "~/.notes")
  )


;; == Early init ==

;; Enable Emacs-tmux to write to the system clipboard through OSC 52 codes.
(setq xterm-tmux-extra-capabilities '(modifyOtherKeys setSelection))
;; Symbolic link to Git-controlled source file; follow link?
(setq vc-follow-symlinks t)
(setq evil-want-C-w-in-emacs-state t)
(setq evil-want-minibuffer t)

(setq-default evil-symbol-word-search t)  ;; Make * and # include - and _ into words.
(setq evil-want-fine-undo t)
(setq evil-move-cursor-back nil)          ;; Defaults to t
;; Needed for evil-collection
(setq evil-want-integration t)
(setq evil-want-keybinding nil)
;; END evil-collection

;; Ace-window
(global-set-key (kbd "M-o") 'ace-window) ;; Or C-x o

;; Magit
(global-set-key (kbd "C-c g")
                'magit-file-dispatch)    ;; Also C-x g and C-x M-g
(with-eval-after-load 'magit-mode
  (magit-wip-mode)  ;; Experiment!  Use M-x magit-wip-logw
  (add-hook 'after-save-hook 'magit-after-save-refresh-status t))
(setq magit-save-repository-buffers 'dontask)
(put 'magit-diff-edit-hunk-commit 'disabled nil)

  ;; Magit doesn't work with git's credentials-cache helper for some reason. This seemed to help this once
  ;; (add-hook 'magit-process-find-password-functions
  ;;   'magit-process-password-auth-source t)
;; There is magit-file-watcher, not recommended


;; https://github.com/syl20bnr/spacemacs/issues/4243
(with-eval-after-load 'company
  (define-key company-active-map (kbd "C-w") 'evil-delete-backward-word)
  )
(with-eval-after-load 'helm
  (define-key helm-map (kbd "C-w") 'evil-delete-backward-word)
  )
;; My own config, useful in plain Emacs or Spacemacs, goes here

(defun ilya/user-config ()
  (message "Running ilya/user-config")
  )


