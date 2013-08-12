;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)
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
; Font size setting (a bit smaller than default
(set-face-attribute 'default nil :height 100)
; Dirtree for fancy directory tree in emacs
(add-to-list 'load-path "~/.emacs.d/")
(require 'dirtree)
;(autoload 'dirtree "dirtree" "Add directory to tree view" t)
; On mac We need to remap Meta to command so that we can enter "funny characters" like AT
(setq mac-option-modifier nil)
(setq mac-command-modifier 'meta)
; Let's get back some of the functionality
; Copy
(global-set-key "\M-c" 'clipboard-kill-ring-save)
; Paste
(global-set-key "\M-v" 'clipboard-yank)
; Undo
(global-set-key "\M-z" 'undo)
; Select All
(global-set-key "\M-a" 'mark-whole-buffer)
; Let's also make the default window bigger
(setq default-frame-alist '((width . 285)(height . 100)))
; IMAP client? - Why not?
(setq gnus-select-method '(nnimap "chamber"
				  (nnimap-address "192.168.0.10")   ; it could also be imap.googlemail.com if that's your server.
				  (nnimap-server-port 993)
				  (nnimap-stream ssl)))
; Easy window size change
(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)
; Managing windows
(setq inhibit-startup-message t)
(dirtree "~/Projects/blacksakura-plugin" 0)
(dirtree "~/Projects/ruby-xbee" 0)
(delete-other-windows)
;(split-window)
(split-window-vertically (floor (* 0.90 (window-height))))
(split-window-horizontally (floor (* 0.20 (window-width))))
(switch-to-buffer "*dirtree*")
(other-window 1)
(switch-to-buffer "*scratch*")
(other-window 1)
(switch-to-buffer "*scratch*")
(other-window 1)

