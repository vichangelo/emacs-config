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

(use-package projectile
  :ensure t
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map))
  :init
  (setq projectile-project-search-path '("~/projects/"))
  (projectile-mode))

(use-package elpy
  :ensure t
  :init
  (elpy-enable)
  (setq elpy-rpc-virtualenv-path 'current)
  (setq python-shell-interpreter "ipython"
        python-shell-interpreter-args "-i --simple-prompt")
  :config
  (add-to-list 'elpy-modules 'elpy-module-folding))

(use-package flycheck
  :ensure t)

(use-package pytest
  :ensure t
  :bind (:map python-mode-map
              ("\C-c a" . pytest-all)
              ("\C-c m" . pytest-module)
              ("\C-c ." . pytest-one)
              ("\C-c c" . pytest-again)
              ("\C-c d" . pytest-directory))
  :init
  (setq pytest-cmd-format-string "cd '%stests' && %s %s '%s'")
  (setq pytest-cmd-flags ""))

(use-package cov
  :ensure t
  :hook python-mode
  :init
  (setq cov-lcov-patterns '("coverage.lcov"))
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
  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
        doom-themes-enable-italic t) ; if nil, italics is universally disabled
  (doom-themes-org-config)
  (load-theme 'doom-material-dark))

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(custom-set-faces
 '(default ((t
             (:width expanded :background "#101010")))))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   '("~/org/arquivo02-23.org" "~/projects/textos.org" "~/org/compromissos.org" "~/org/metas.org"))
 '(package-selected-packages
   '(org-pomodoro rainbow-delimiters projectile material-theme forge flycheck elpy doom-themes better-defaults)))
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
