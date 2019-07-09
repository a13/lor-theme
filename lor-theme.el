;;; lor-theme.el --- linux.org.ru Tango-based theme for faces

;; Copyright (C) 2010-2018 Free Software Foundation, Inc.

;; Authors: Chong Yidong <cyd@stupidchicken>
;;          Jan Moringen <jan.moringen@uni-bielefeld.de>
;;          Dmitry K.

;; This file is part of GNU Emacs.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; The colors in this theme come from the Tango palette, which is in
;; the public domain: http://tango.freedesktop.org/

;;; Code:

(deftheme lor
  "Face colors using the Tango palette (dark background).
Basic, Font Lock, Isearch, Gnus, Message, Ediff, Flyspell,
Semantic, and Ansi-Color faces are included.")

(let ((class '((class color) (min-colors 89)))
      (lor-code "#f8f8f8")
      (lor-comment "#7c7c7c")
      (lor-keyword "#96cbfe")
      (lor-function "#ffffb6")
      (lor-title "#268bd2")
      (lor-haskelltype "#aac")
      (lor-haskell-preprocessor "#caa")
      (lor-string "#a8ff60")
      (lor-subst "#daefa3")
      (lor-regexp "#e9c062")
      (lor-class "#fff")
      (lor-preprocessor "#c6c5fe")
      (lor-number "#ff73fd")
      (lor-deletion "#dc322f")
      (lor-background "#2e3436")
      (lor-article-background "#272C2D")
      (lor-link "#729fcf")
      (lor-body "#babdb6")
      ;; Tango palette colors.
      (butter-1 "#fce94f") (butter-2 "#edd400") (butter-3 "#c4a000")
      (orange-1 "#fcaf3e") (orange-2 "#f57900") (orange-3 "#ce5c00")
      (choc-1 "#e9b96e") (choc-2 "#c17d11") (choc-3 "#8f5902")
      (cham-1 "#8ae234") (cham-2 "#73d216") (cham-3 "#4e9a06")
      (blue-1 "#729fcf") (blue-2 "#3465a4") (blue-3 "#204a87")
      (plum-1 "#e090d7") (plum-2 "#75507b") (plum-3 "#5c3566")
      (red-1 "#ef2929")  (red-2 "#cc0000")  (red-3 "#a40000")
      (alum-1 "#eeeeec") (alum-2 "#d3d7cf") (alum-3 "#babdb6")
      (alum-4 "#888a85") (alum-5 "#555753") (alum-6 "#2e3436")
      ;; Not in Tango palette; used for better contrast.
      (cham-0 "#b4fa70") (blue-0 "#8cc4ff") (plum-0 "#e9b2e3")
      (red-0 "#ff4b4b")  (alum-5.5 "#41423f") (alum-7 "#212526"))

  (custom-theme-set-faces
   'lor
   ;; Ensure sufficient contrast on low-color terminals.
   `(default ((((class color) (min-colors 4096))
	       (:foreground ,lor-code :background ,lor-background))
	      (((class color) (min-colors 256))
	       (:foreground ,alum-1 :background "#222"))
	      (,class
	       (:foreground ,alum-1 :background "black"))))
   `(cursor ((,class (:background ,cham-0))))
   ;; Highlighting faces
   `(fringe ((,class (:background ,lor-article-background))))
   `(highlight ((,class (:background ,alum-6))))
   `(region ((,class (:background ,alum-7))))
   `(secondary-selection ((,class (:background ,blue-3))))
   `(isearch ((,class (:foreground ,alum-1 :background ,orange-3))))
   `(lazy-highlight ((,class (:background ,choc-3))))
   `(trailing-whitespace ((,class (:background ,red-3))))
   ;; Mode line faces
   `(mode-line ((,class
		 (:box (:line-width -1 :style released-button)
		       :background ,alum-5 :foreground ,alum-1))))
   `(mode-line-inactive ((,class
			  (:box (:line-width -1 :style released-button)
			        :background ,alum-6 :foreground ,alum-3))))
   `(compilation-mode-line-fail ((,class (:foreground ,red-3))))
   `(compilation-mode-line-run  ((,class (:foreground ,orange-3))))
   `(compilation-mode-line-exit ((,class (:foreground ,cham-3))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,cham-0))))
   `(escape-glyph ((,class (:foreground ,butter-3))))
   `(homoglyph ((,class (:foreground ,butter-3))))
   `(error ((,class (:foreground ,red-0))))
   `(warning ((,class (:foreground ,lor-title))))
   `(success ((,class (:foreground ,cham-1))))
   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,lor-keyword))))
   `(font-lock-comment-face ((,class (:foreground ,lor-comment))))
   `(font-lock-constant-face ((,class (:foreground ,lor-preprocessor))))
   `(font-lock-function-name-face ((,class (:foreground ,lor-function))))
   `(font-lock-keyword-face ((,class (:foreground ,lor-keyword))))
   `(font-lock-string-face ((,class (:foreground ,lor-string))))
   `(font-lock-doc-face ((,class (:foreground ,lor-subst))))
   `(font-lock-type-face ((,class (:foreground ,lor-haskelltype))))
   `(font-lock-variable-name-face ((,class (:foreground ,lor-title))))
   `(font-lock-preprocessor-face ((,class (:foreground ,lor-preprocessor))))
   `(font-lock-negation-char-face  ((,class (:foreground ,lor-deletion))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,lor-regexp))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,lor-regexp))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,blue-1))))
   `(link-visited ((,class (:underline t :foreground ,blue-2))))
   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:foregr ound ,plum-1))))
   `(gnus-group-news-1-low ((,class (:foreground ,plum-2))))
   `(gnus-group-news-2 ((,class (:foreground ,blue-1))))
   `(gnus-group-news-2-low ((,class (:foreground ,blue-2))))
   `(gnus-group-news-3 ((,class (:foreground ,cham-1))))
   `(gnus-group-news-3-low ((,class (:foreground ,lor-comment))))
   `(gnus-group-news-4 ((,class (:foreground ,plum-0))))
   `(gnus-group-news-4-low ((,class (:foreground ,choc-2))))
   `(gnus-group-news-5 ((,class (:foreground ,lor-title))))
   `(gnus-group-news-5-low ((,class (:foreground ,orange-2))))
   `(gnus-group-news-low ((,class (:foreground ,butter-2))))
   `(gnus-group-mail-1 ((,class (:foreground ,plum-1))))
   `(gnus-group-mail-1-low ((,class (:foreground ,plum-2))))
   `(gnus-group-mail-2 ((,class (:foreground ,blue-1))))
   `(gnus-group-mail-2-low ((,class (:foreground ,blue-2))))
   `(gnus-group-mail-3 ((,class (:foreground ,cham-1))))
   `(gnus-group-mail-3-low ((,class (:foreground ,lor-comment))))
   `(gnus-group-mail-low ((,class (:foreground ,butter-2))))
   `(gnus-header-content ((,class (:weight normal :foreground ,butter-3))))
   `(gnus-header-from ((,class (:foreground ,butter-2))))
   `(gnus-header-subject ((,class (:foreground ,cham-1))))
   `(gnus-header-name ((,class (:foreground ,blue-1))))
   `(gnus-header-newsgroups ((,class (:foreground ,choc-2))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,blue-1))))
   `(message-header-cc ((,class (:foreground ,butter-3))))
   `(message-header-other ((,class (:foreground ,choc-2))))
   `(message-header-subject ((,class (:foreground ,cham-1))))
   `(message-header-to ((,class (:foreground ,butter-2))))
   `(message-cited-text ((,class (:foreground ,cham-1))))
   `(message-separator ((,class (:foreground ,plum-1))))
   ;; SMerge faces
   `(smerge-refined-change ((,class (:background ,blue-3))))
   ;; Ediff faces
   `(ediff-current-diff-A ((,class (:background ,alum-5))))
   `(ediff-fine-diff-A ((,class (:background ,blue-3))))
   `(ediff-even-diff-A ((,class (:background ,alum-5.5))))
   `(ediff-odd-diff-A ((,class (:background ,alum-5.5))))
   `(ediff-current-diff-B ((,class (:background ,alum-5))))
   `(ediff-fine-diff-B ((,class (:background ,choc-3))))
   `(ediff-even-diff-B ((,class (:background ,alum-5.5))))
   `(ediff-odd-diff-B ((,class (:background ,alum-5.5))))
   ;; Flyspell faces
   `(flyspell-duplicate ((,class (:underline ,lor-title))))
   `(flyspell-incorrect ((,class (:underline ,red-1))))
   ;; Realgud
   `(realgud-overlay-arrow1  ((,class (:foreground "green"))))
   `(realgud-overlay-arrow2  ((,class (:foreground ,lor-title))))
   `(realgud-overlay-arrow3  ((,class (:foreground ,plum-0))))
   `(realgud-bp-disabled-face      ((,class (:foreground ,blue-3))))
   `(realgud-bp-line-enabled-face  ((,class (:underline "red"))))
   `(realgud-bp-line-disabled-face ((,class (:underline ,blue-3))))
   `(realgud-file-name             ((,class :foreground ,blue-1)))
   `(realgud-line-number           ((,class :foreground ,plum-0)))
   `(realgud-backtrace-number      ((,class :foreground ,plum-0 :weight bold)))
   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline ,alum-4))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,plum-3))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,choc-3))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,red-3))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:background ,alum-5.5))))
   `(semantic-tag-boundary-face ((,class (:overline ,blue-1))))
   `(semantic-unmatched-syntax-face ((,class (:underline ,red-1))))
   `(hl-line ((,class (:background ,alum-5))))
   `(highlight-numbers-number ((,class (:foreground ,lor-number))))
   `(variable-pitch ((,class (:background ,lor-article-background :foreground ,lor-body))))
   `(fixed-pitch ((,class (:background ,lor-background))))
   `(fixed-pitch-serif ((,class (:background ,lor-background))))
   `(org-block ((,class (:inherit fixed-pitch))))
   `(org-table ((,class (:inherit fixed-pitch))))
   `(org-document-info ((,class (:foreground "dark orange"))))
   `(org-document-info-keyword ((,class (:inherit (shadow fixed-pitch)))))
   `(org-link ((,class (:foreground ,lor-link :underline t))))
   `(org-meta-line ((,class (:inherit (font-lock-comment-face fixed-pitch)))))
   `(org-property-value ((,class (:inherit fixed-pitch))) t)
   `(org-special-keyword ((,class (:inherit (font-lock-comment-face fixed-pitch)))))
   `(org-tag ((,class (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
   `(org-verbatim ((,class (:inherit (shadow fixed-pitch))))))



  (custom-theme-set-variables
   'lor
   `(ansi-color-names-vector [,alum-7 ,red-0 ,cham-0 ,butter-1
			      ,blue-1 ,plum-1 ,blue-0 ,alum-1])))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))


(provide-theme 'lor)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; lor-theme.el ends here
