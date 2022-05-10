(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(setq inhibit-startup-message t)
(set-face-attribute 'default nil :font "Monospace" :height 105)
(tool-bar-mode -1)
    (menu-bar-mode -1)
    (scroll-bar-mode -1)
    (global-display-line-numbers-mode)
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit1.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-scroll-output t)
 '(custom-safe-themes
   '("e6506be83f914ee7a956d3d8ccddc9cc984d5e1b1b7bf2e63dbfb7ed03ec7d1c" "fc48cc3bb3c90f7761adf65858921ba3aedba1b223755b5924398c666e78af8b" "e5dc5b39fecbeeb027c13e8bfbf57a865be6e0ed703ac1ffa96476b62d1fae84" default))
 '(org-export-html-postamble nil)
 '(org-hide-leading-stars t)
 '(org-startup-folded 'overview)
 '(org-startup-indented t)
 '(package-selected-packages
   '(dashboard dap-mode quickrun maven-test-mode xresources-theme ewal javadoc-lookup xwwp-follow-link-helm helm-lsp lsp-mode lsp-ui lsp-java git-timemachine git-gutter magit Dired+ treemacs-projectile treemacs emmet-mode ggtags hydra noflet circe undo-tree zenburn-theme yasnippet-snippets yasnippet-lean yasnippet-classic-snippets which-key web-mode virtualenv use-package try pylint ox-reveal org-movies org-bullets jedi iedit htmlize flycheck expand-region elpy counsel company company-jedi color-theme beacon ace-window))
 '(warning-suppress-log-types
   '((color-theme)
     (color-theme)
     (use-package)
     (use-package)
     (use-package)
     (use-package)))
 '(warning-suppress-types
   '((iedit)
     ((flymake flymake))
     (auto-save)
     (color-theme)
     (use-package)
     (use-package)
     (use-package)
     (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aw-leading-char-face ((t (:inherit ace-jump-face-foreground :height 3.0))))
 '(lsp-ui-doc-background ((t (:background nil))))
 '(lsp-ui-doc-header ((t (:inherit (font-lock-string-face italic))))))
