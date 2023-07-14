(require 'package)
(add-to-list 'package-archives
	     '("gnu"   . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(setq inhibit-startup-message t)
(setq column-number-mode t)
(global-linum-mode t)
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)
(setq org-pomodoro-manual-break t)
(setq org-archive-location "~/org/arquivo03-23.org::* From %s")
(setq custom-safe-themes t)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

(use-package auto-package-update
  :custom
  (auto-package-update-interval 7)
  (auto-package-update-prompt-before-update t)
  (auto-package-update-hide-results t)
  :config
  (auto-package-update-maybe)
  (auto-package-update-at-time "09:00"))

(use-package better-defaults
  :ensure t)

(use-package ag
  :ensure t)

(use-package counsel
  :ensure t
  :init
  (counsel-mode 1))

(use-package ivy
  :ensure t
  :init
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  (ivy-mode 1)
  (global-set-key (kbd "C-s") 'swiper-isearch)
  (global-set-key (kbd "M-x") 'counsel-M-x)
  (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  (global-set-key (kbd "M-y") 'counsel-yank-pop)
  (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  (global-set-key (kbd "<f1> l") 'counsel-find-library)
  (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  (global-set-key (kbd "<f2> j") 'counsel-set-variable)
  (global-set-key (kbd "C-x b") 'ivy-switch-buffer)
  (global-set-key (kbd "C-c v") 'ivy-push-view)
  (global-set-key (kbd "C-c V") 'ivy-pop-view))

(use-package org
  :bind ("C-c a" . org-agenda)
  :config
  (setq org-agenda-files '"~/org/org_agenda_files.txt"))

(use-package projectile
  :ensure t
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
  :init
  (setq projectile-git-fd-args "-H -0 -E .git -tf")
  (setq projectile-project-search-path '("~/projects/"))
  (projectile-mode))

(use-package js2-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode)))

(use-package elpy
  :ensure t
  :init
  (elpy-enable)
  (setq elpy-rpc-virtualenv-path 'current)
  (setq python-shell-interpreter "ipython"
        python-shell-interpreter-args "-i --simple-prompt")
  (setq elpy-shell-starting-directory 'current-directory)
  :config
  (add-to-list 'elpy-modules 'elpy-module-folding))

(use-package flycheck
  :ensure t
  :init
  (setq flycheck-stylelintrc '"/home/victor-files/.stylelintrc.json")
  (setq flycheck-css-stylelint-executable '"/home/victor-files/node_modules/stylelint/bin/stylelint.js"))

(use-package pytest
  :ensure t
  :bind (:map python-mode-map
              ("\C-c a" . pytest-all)
              ("\C-c m" . pytest-module)
              ("\C-c ." . pytest-one)
              ("\C-c c" . pytest-again)
              ("\C-c d" . pytest-directory))
  :init
  (setq pytest-project-root-files '("pyproject.toml"))
  (setq pytest-cmd-format-string "cd '%s' && %s %s")
  (setq pytest-cmd-flags ""))

(use-package cov
  :ensure t
  :hook python-mode
  :init
  (setq cov-lcov-patterns '("coverage.lcov"))
  (setq cov-fringe-symbol 'filled-square)
  (custom-set-faces
   '(cov-none-face  ((((class color)) :foreground "red")))
   '(cov-light-face ((((class color)) :foreground "orange")))
   '(cov-med-face   ((((class color)) :foreground "yellow")))
   '(cov-heavy-face ((((class color)) :foreground "green")))))

(use-package blacken
  :ensure t
  :hook python-mode
  :init
  (setq blacken-line-length '79))

(use-package sphinx-doc
  :ensure t
  :hook python-mode
  :init
  (setq sphinx-doc-include-types 't))

(use-package magit
  :ensure t)

(use-package forge
  :ensure t)

(set-fringe-mode 10)
(menu-bar-mode 1)
(setq visible-bell nil)
(setq auto-save-default nil)
(setq make-backup-files nil)

(use-package doom-themes
  :ensure t
  :config
  ;; Global settings (defaults)
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (doom-themes-org-config))

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)

(font-lock-add-keywords 'python-mode
                        '(("\\<\\([A-Z_]\\)+\\>" . font-lock-constant-face)))

(load-theme 'vichangelo-light)
(run-at-time '"06:00" '86400 'enable-theme 'vichangelo-light)
(load-theme 'vichangelo-night)
(run-at-time '"15:00" '86400 'enable-theme 'vichangelo-night)

(setq ansi-color-map '[default bold default italic underline success warning error nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil
  (foreground-color . #1="#050505")
  (foreground-color . #2="#ff6e6e")
  (foreground-color . #3="#b1ff7e")
  (foreground-color . #4="#ffcc7e")
  (foreground-color . #5="#7ea4ff")
  (foreground-color . #6="#c58bff")
  (foreground-color . #7="#fff06e")
  (foreground-color . #8="#cccccc")
  nil nil
  (background-color . #1#)
  (background-color . #2#)
  (background-color . #3#)
  (background-color . #4#)
  (background-color . #5#)
  (background-color . #6#)
  (background-color . #7#)
  (background-color . #8#)
  nil nil])

(setq enable-local-variables :all)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(org-pomodoro rainbow-delimiters projectile material-theme forge flycheck elpy doom-themes better-defaults)))

(custom-set-faces
 '(default ((t
             (:font "JetBrainsMonoNL Nerd Font" :height 113))))
 '(swiper-line-face ((t
                      (:inherit region)))))
