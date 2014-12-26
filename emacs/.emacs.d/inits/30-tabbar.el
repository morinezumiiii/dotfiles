(require 'tabbar)
(tabbar-mode 1)
(tabbar-mwheel-mode -1)
(setq tabbar-buffer-groups-function nil)
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))
(setq tabbar-auto-scroll-flag nil)
(setq tabbar-separator '(1.2))
(set-face-attribute 'tabbar-default nil
                    :family "Ricty"
                    :background "black"
                    :foreground "gray72"
                    :height 1.0)
(set-face-attribute 'tabbar-unselected nil
                    :background "black"
                    :foreground "grey72"
                    :box nil)
(set-face-attribute 'tabbar-selected nil
                    :background "black"
                    :foreground "#c82829"
                    :box nil)
(set-face-attribute 'tabbar-button nil
                    :box nil)
(set-face-attribute 'tabbar-separator nil
                    :height 1.0)
(defvar my-tabbar-displayed-buffers
 '("scratch*" "*Messages*" "*Backtrace*" "*Colors*" "*Faces*" "*vc-")
  "*Regexps matches buffer names always included tabs.")
(defun my-tabbar-buffer-list ()
  "Return the list of buffers to show in tabs.
   Exclude buffers whose name starts with a space or an asterisk.
   The current buffer and buffers matches `my-tabbar-displayed-buffers'
   are always included."
  (let* ((hides (list ?\  ?\*))
         (re (regexp-opt my-tabbar-displayed-buffers))
         (cur-buf (current-buffer))
         (tabs (delq nil
                     (mapcar (lambda (buf)
                               (let ((name (buffer-name buf)))
                                 (when (or (string-match re name)
                                           (not (memq (aref name 0) hides)))
                                   buf)))
                             (buffer-list)))))
    ;; Always include the current buffer.
    (if (memq cur-buf tabs)
        tabs
      (cons cur-buf tabs))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)
(global-set-key (kbd "<M-right>") 'tabbar-forward-tab)
(global-set-key (kbd "<M-left>") 'tabbar-backward-tab)
(global-set-key (kbd "M-4") 'tabbar-mode)
