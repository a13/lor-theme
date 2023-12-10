;;; lor-oc-theme.el --- Open color based theme inspired by tango

;; Copyright (C) 2010-2018 Free Software Foundation, Inc.

;; Authors: Chong Yidong <cyd@stupidchicken>
;;          Jan Moringen <jan.moringen@uni-bielefeld.de>
;;          Dmitry K.

;; Homepage: https://github.com/a13/lor-theme
;; Package-Version: 0.0.1
;; Package-Requires: ((open-color "0.0.1"))

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

(require 'open-color)

(deftheme lor-oc
  "Face colors using the Tango palette (dark background).
Basic, Font Lock, Isearch, Gnus, Message, Ediff, Flyspell,
Semantic, and Ansi-Color faces are included.")

(let ((class '((class color) (min-colors 89)))
      (lor-code open-color-grape-0)
      (lor-comment open-color-gray-6)
      (lor-keyword open-color-blue-2)
      (lor-function open-color-yellow-0)
      (lor-title open-color-blue-6)
      (lor-haskelltype open-color-gray-5)
      ;; (lor-haskell-preprocessor open-color-pink-1)
      (lor-string open-color-lime-1)
      (lor-subst open-color-lime-2)
      (lor-regexp open-color-orange-3)
      (lor-class open-color-gray-1)
      (lor-preprocessor open-color-indigo-2)
      (lor-number open-color-grape-4)
      (lor-deletion open-color-red-9)
      (lor-background open-color-gray-8)
      (lor-article-background open-color-gray-9)
      (lor-link open-color-blue-3)
      (lor-body open-color-gray-4))

  (custom-theme-set-faces
   'lor-oc
   ;; Ensure sufficient contrast on low-color terminals.
   `(default ((((class color) (min-colors 4096))
               (:foreground ,lor-code :background ,lor-background))
              (((class color) (min-colors 256))
               (:foreground ,open-color-gray-2 :background "#202020"))
              (,class
               (:foreground ,open-color-gray-2 :background "#000000"))))
   `(cursor ((,class (:background ,open-color-lime-3))))
   ;; Highlighting faces
   `(fringe ((,class (:background ,lor-article-background))))
   `(highlight ((,class (:background ,open-color-gray-8))))
   `(region ((,class (:background ,open-color-gray-9))))
   `(secondary-selection ((,class (:background ,open-color-blue-9))))
   `(isearch ((,class (:foreground ,open-color-gray-2 :background ,open-color-orange-8))))
   `(lazy-highlight ((,class (:background ,open-color-orange-8))))
   `(trailing-whitespace ((,class (:background ,open-color-red-9))))
   ;; Mode line faces
   `(mode-line ((,class
                 (:box (:line-width -1 :style released-button)
                       :background ,open-color-gray-7 :foreground ,open-color-gray-2))))
   `(mode-line-inactive ((,class
                          (:box (:line-width -1 :style released-button)
                                :background ,open-color-gray-8 :foreground ,open-color-gray-4))))
   `(compilation-mode-line-fail ((,class (:foreground ,open-color-red-9))))
   `(compilation-mode-line-run  ((,class (:foreground ,open-color-orange-8))))
   `(compilation-mode-line-exit ((,class (:foreground ,open-color-lime-9))))
   ;; Escape and prompt faces
   `(minibuffer-prompt ((,class (:foreground ,open-color-lime-3))))
   `(escape-glyph ((,class (:foreground ,open-color-yellow-9))))
   `(homoglyph ((,class (:foreground ,open-color-yellow-9))))
   `(error ((,class (:foreground ,open-color-red-6))))
   `(warning ((,class (:foreground ,lor-title))))
   `(success ((,class (:foreground ,open-color-lime-5))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,lor-keyword))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,lor-comment))))
   `(font-lock-comment-face ((,class (:foreground ,lor-comment))))
   `(font-lock-constant-face ((,class (:foreground ,lor-preprocessor))))
   `(font-lock-doc-face ((,class (:foreground ,lor-subst))))
   `(font-lock-function-name-face ((,class (:foreground ,lor-function))))
   `(font-lock-keyword-face ((,class (:foreground ,lor-keyword))))
   `(font-lock-negation-char-face  ((,class (:foreground ,lor-deletion))))
   `(font-lock-preprocessor-face ((,class (:foreground ,lor-preprocessor))))
   `(font-lock-regexp-grouping-backslash ((,class (:foreground ,lor-regexp))))
   `(font-lock-regexp-grouping-construct ((,class (:foreground ,lor-regexp))))
   `(font-lock-string-face ((,class (:foreground ,lor-string))))
   `(font-lock-type-face ((,class (:foreground ,lor-haskelltype))))
   `(font-lock-variable-name-face ((,class (:foreground ,lor-title))))
   `(font-lock-warning-face ((,class (:foreground ,lor-title))))

   ;; Rainbow identifiers
   `(rainbow-identifiers-identifier-1 ((,class (:foreground ,open-color-indigo-2))))
   `(rainbow-identifiers-identifier-2 ((,class (:foreground ,open-color-grape-2))))
   `(rainbow-identifiers-identifier-3 ((,class (:foreground ,open-color-orange-2))))
   `(rainbow-identifiers-identifier-4 ((,class (:foreground ,open-color-blue-2))))
   `(rainbow-identifiers-identifier-5 ((,class (:foreground ,open-color-cyan-2))))
   `(rainbow-identifiers-identifier-6 ((,class (:foreground ,open-color-lime-2))))
   `(rainbow-identifiers-identifier-7 ((,class (:foreground ,open-color-violet-2))))
   `(rainbow-identifiers-identifier-8 ((,class (:foreground ,open-color-gray-3))))
   `(rainbow-identifiers-identifier-9 ((,class (:foreground ,open-color-yellow-1))))
   `(rainbow-identifiers-identifier-10 ((,class (:foreground ,open-color-pink-2))))
   `(rainbow-identifiers-identifier-11 ((,class (:foreground ,open-color-teal-2))))
   `(rainbow-identifiers-identifier-12 ((,class (:foreground ,open-color-green-3))))
   `(rainbow-identifiers-identifier-13 ((,class (:foreground ,open-color-red-2))))
   `(rainbow-identifiers-identifier-14 ((,class (:foreground ,open-color-gray-2))))
   `(rainbow-identifiers-identifier-15 ((,class (:foreground ,open-color-lime-1))))

   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,open-color-blue-3))))
   `(link-visited ((,class (:underline t :foreground ,open-color-violet-3))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:foregr ound ,open-color-grape-3))))
   `(gnus-group-news-1-low ((,class (:foreground ,open-color-grape-4))))
   `(gnus-group-news-2 ((,class (:foreground ,open-color-blue-9))))
   `(gnus-group-news-2-low ((,class (:foreground ,open-color-blue-4))))
   `(gnus-group-news-3 ((,class (:foreground ,open-color-lime-5))))
   `(gnus-group-news-3-low ((,class (:foreground ,lor-comment))))
   `(gnus-group-news-4 ((,class (:foreground ,open-color-grape-2))))
   `(gnus-group-news-4-low ((,class (:foreground ,open-color-orange-5))))
   `(gnus-group-news-5 ((,class (:foreground ,lor-title))))
   `(gnus-group-news-5-low ((,class (:foreground ,open-color-orange-6))))
   `(gnus-group-news-low ((,class (:foreground ,open-color-yellow-4))))
   `(gnus-group-mail-1 ((,class (:foreground ,open-color-grape-3))))
   `(gnus-group-mail-1-low ((,class (:foreground ,open-color-grape-4))))
   `(gnus-group-mail-2 ((,class (:foreground ,open-color-blue-9))))
   `(gnus-group-mail-2-low ((,class (:foreground ,open-color-blue-4))))
   `(gnus-group-mail-3 ((,class (:foreground ,open-color-lime-5))))
   `(gnus-group-mail-3-low ((,class (:foreground ,lor-comment))))
   `(gnus-group-mail-low ((,class (:foreground ,open-color-yellow-4))))
   `(gnus-header-content ((,class (:weight normal :foreground ,open-color-yellow-9))))
   `(gnus-header-from ((,class (:foreground ,open-color-yellow-4))))
   `(gnus-header-subject ((,class (:foreground ,open-color-lime-5))))
   `(gnus-header-name ((,class (:foreground ,open-color-blue-9))))
   `(gnus-header-newsgroups ((,class (:foreground ,open-color-orange-5))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,open-color-blue-9))))
   `(message-header-cc ((,class (:foreground ,open-color-yellow-9))))
   `(message-header-other ((,class (:foreground ,open-color-orange-5))))
   `(message-header-subject ((,class (:foreground ,open-color-lime-5))))
   `(message-header-to ((,class (:foreground ,open-color-yellow-4))))
   `(message-cited-text ((,class (:foreground ,open-color-lime-5))))
   `(message-separator ((,class (:foreground ,open-color-grape-3))))
   ;; SMerge faces
   `(smerge-refined-change ((,class (:background ,open-color-blue-9))))
   ;; Ediff faces
   `(ediff-current-diff-A ((,class (:background ,open-color-gray-6))))
   `(ediff-fine-diff-A ((,class (:background ,open-color-blue-9))))
   `(ediff-even-diff-A ((,class (:background ,open-color-gray-7))))
   `(ediff-odd-diff-A ((,class (:background ,open-color-gray-7))))
   `(ediff-current-diff-B ((,class (:background ,open-color-gray-6))))
   `(ediff-fine-diff-B ((,class (:background ,open-color-orange-8))))
   `(ediff-even-diff-B ((,class (:background ,open-color-gray-7))))
   `(ediff-odd-diff-B ((,class (:background ,open-color-gray-7))))
   ;; Flyspell faces
   `(flyspell-duplicate ((,class (:underline ,lor-title))))
   `(flyspell-incorrect ((,class (:underline ,open-color-red-7))))
   ;; Realgud
   `(realgud-overlay-arrow1  ((,class (:foreground "green"))))
   `(realgud-overlay-arrow2  ((,class (:foreground ,lor-title))))
   `(realgud-overlay-arrow3  ((,class (:foreground ,open-color-grape-2))))
   `(realgud-bp-disabled-face      ((,class (:foreground ,open-color-blue-9))))
   `(realgud-bp-line-enabled-face  ((,class (:underline "red"))))
   `(realgud-bp-line-disabled-face ((,class (:underline ,open-color-blue-9))))
   `(realgud-file-name             ((,class :foreground ,open-color-blue-9)))
   `(realgud-line-number           ((,class :foreground ,open-color-grape-2)))
   `(realgud-backtrace-number      ((,class :foreground ,open-color-grape-2 :weight bold)))
   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline ,open-color-gray-5))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,open-color-grape-9))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,open-color-orange-8))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,open-color-red-9))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:background ,open-color-gray-7))))
   `(semantic-tag-boundary-face ((,class (:overline ,open-color-blue-9))))
   `(semantic-unmatched-syntax-face ((,class (:underline ,open-color-red-7))))
   `(hl-line ((,class (:background ,open-color-gray-7))))
   `(ivy-current-match ((,class (:background ,open-color-gray-7))))
   `(highlight-numbers-number ((,class (:foreground ,lor-number))))
   `(variable-pitch ((,class (:background ,lor-article-background :foreground ,lor-code))))
   `(fixed-pitch ((,class (:background ,lor-background))))
   `(fixed-pitch-serif ((,class (:background ,lor-background))))
   `(org-block ((,class (:inherit fixed-pitch))))
   `(org-table ((,class (:inherit fixed-pitch))))
   `(org-hide ((,class (:inherit variable-pitch))))
   `(org-document-info ((,class (:foreground "dark orange"))))
   `(org-document-info-keyword ((,class (:inherit (shadow fixed-pitch)))))
   `(org-link ((,class (:foreground ,lor-link :underline t))))
   `(org-meta-line ((,class (:inherit (font-lock-comment-face fixed-pitch)))))
   `(org-property-value ((,class (:inherit fixed-pitch))) t)
   `(org-special-keyword ((,class (:inherit (font-lock-comment-face fixed-pitch)))))
   `(org-tag ((,class (:inherit (shadow fixed-pitch) :weight bold :height 0.8))))
   `(org-verbatim ((,class (:inherit (shadow fixed-pitch))))))



  (custom-theme-set-variables
   'lor-oc
   `(ansi-color-names-vector
     [,open-color-gray-9 ,open-color-red-6 ,open-color-lime-3 ,open-color-yellow-3
                         ,open-color-blue-9 ,open-color-grape-3 ,open-color-blue-4 ,open-color-gray-2])))

;;;###Autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))


(provide-theme 'lor-oc)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; lor-oc-theme.el ends here
