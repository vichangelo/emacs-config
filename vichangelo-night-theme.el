(deftheme vichangelo-night
  "Created 2023-03-16.")

(custom-theme-set-variables
 'vichangelo-night
 '(display-time-mode t))

(custom-theme-set-faces
 'vichangelo-night
 '(cursor ((t (:background "#FFFFFF"))))
 '(fixed-pitch ((t (:family "Monospace"))))
 '(variable-pitch ((((type w32)) (:foundry "outline" :family "Arial")) (t (:family "Sans Serif"))))
 '(escape-glyph ((t (:foreground "#85DDFF"))))
 '(homoglyph ((((background dark)) (:foreground "cyan")) (((type pc)) (:foreground "magenta")) (t (:foreground "brown"))))
 '(minibuffer-prompt ((t (:foreground "#FFFFFF"))))
 '(highlight ((t (:foreground "#f4f4f4" :background "#FFFFFF"))))
 '(region ((t (:extend t :background "#282828"))))
 '(shadow ((t (:foreground "#515151"))))
 '(secondary-selection ((t (:extend t :background "#777778"))))
 '(trailing-whitespace ((t (:background "#FF5E5E"))))
 '(font-lock-builtin-face ((t (:foreground "#ff6e7c" :weight bold))))
 '(font-lock-comment-delimiter-face ((default (:inherit (font-lock-comment-face)))))
 '(font-lock-comment-face ((t (:slant italic :foreground "#959595"))))
 '(font-lock-constant-face ((t (:foreground "#cca365"))))
 '(font-lock-doc-face ((t (:slant italic :foreground "#959595" :inherit (font-lock-comment-face)))))
 '(font-lock-function-name-face ((t (:foreground "#7ea4ff"))))
 '(font-lock-keyword-face ((t (:foreground "#ff6e6e" :slant italic :weight bold))))
 '(font-lock-negation-char-face ((t (:inherit bold :foreground "#ff6e6e"))))
 '(font-lock-preprocessor-face ((t (:inherit bold :foreground "#ff6e6e"))))
 '(font-lock-regexp-grouping-backslash ((t (:inherit bold :foreground "#ff6e6e"))))
 '(font-lock-regexp-grouping-construct ((t (:inherit bold :foreground "#ff6e6e"))))
 '(font-lock-string-face ((t (:foreground "#b1ff7e"))))
 '(font-lock-type-face ((t (:foreground "#c58bff"))))
 '(font-lock-variable-name-face ((t (:foreground "#ffcc7e"))))
 '(font-lock-warning-face ((t (:inherit (warning)))))
 '(button ((t (:inherit (link)))))
 '(link ((t (:weight bold :underline (:color foreground-color :style line) :foreground "#FFFFFF"))))
 '(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground "magenta4")) (((class color) (background dark)) (:foreground "violet"))))
 '(fringe ((t (:foreground "#4b474c" :inherit (default)))))
 '(header-line ((t (:inherit (mode-line)))))
 '(tooltip ((t (:foreground "#d4d4d4" :background "#121212"))))
 '(mode-line ((t (:box nil :foreground "#dfdfdf" :background "#181818"))))
 '(mode-line-buffer-id ((t (:weight bold))))
 '(mode-line-emphasis ((t (:foreground "#FFFFFF"))))
 '(mode-line-highlight ((t (:inherit (highlight)))))
 '(mode-line-inactive ((t (:box nil :foreground "#8CDAFF" :background "#181818"))))
 '(isearch ((t (:weight bold :inherit (lazy-highlight)))))
 '(isearch-fail ((t (:weight bold :foreground "#171F24" :background "#FF5E5E"))))
 '(lazy-highlight ((t (:weight bold :foreground "#d4d4d4" :background "#4b474c"))))
 '(match ((t (:weight bold :foreground "#468800" :background "#171F24"))))
 '(next-error ((t (:inherit (region)))))
 '(query-replace ((t (:inherit (isearch)))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#ffe699" :inherit rainbow-delimiters-base-face))))
 '(rainbow-delimiters-depth-2-face ((t (:inherit rainbow-delimiters-base-face :foreground "#e2cbf7"))))
 '(rainbow-delimiters-depth-3-face ((t (:inherit rainbow-delimiters-base-face :foreground "#b3f5bc"))))
 '(rainbow-delimiters-depth-4-face ((t (:inherit rainbow-delimiters-base-face :foreground "#f9ffb5"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#fa9189" :inherit rainbow-delimiters-base-face))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "#fcae7c" :inherit rainbow-delimiters-base-face))))
 '(rainbow-delimiters-depth-7-face ((t (:inherit rainbow-delimiters-base-face :foreground "#d1bdff"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "#d6f6ff" :inherit rainbow-delimiters-base-face))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "#fff06e" :inherit rainbow-delimiters-base-face))))
 '(rainbow-delimiters-base-error-face ((t (:inherit rainbow-delimiters-base-face :foreground "red3"))))
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#070707" :foreground "#dfdfdf" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal)))))

(provide-theme 'vichangelo-night)
