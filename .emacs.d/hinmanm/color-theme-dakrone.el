;;; color-theme-dakrone.el --- My theme

;; Copyright (C) 2005, 2006  Xavier Maillard <zedek@gnu.org>
;; Copyright (C) 2005, 2006  Brian Palmer <bpalmer@gmail.com>

;; Version: 0.0.1
;; Keywords: themes
;; Author: Lee Hinman
;; Maintainer: Lee Hinman <lee@writequit.org>

;; This file is not part of GNU Emacs.

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

(defun color-theme-dakrone ()
  "Cornsilk on black.
Includes info, diary, font-lock, eshell, sgml, message, gnus,
widget, custom, latex, ediff."
  (interactive)
  (color-theme-install
   '(color-theme-dakrone
     ((foreground-color . "cornsilk")
      (background-color . "gray10")
      (mouse-color . "black")
      (cursor-color . "white")
      (border-color . "black")
      (background-mode . dark))
     (default ((t (nil))))
     (modeline ((t (:foreground "black" :background "wheat"))))
     (modeline-buffer-id ((t (:foreground "black" :background "wheat"))))
     (modeline-mousable ((t (:foreground "black" :background "wheat"))))
     (modeline-mousable-minor-mode ((t (:foreground "black" :background "wheat"))))
     (highlight ((t (:foreground "wheat" :background "darkslategray"))))
     (bold ((t (:bold t))))
     (italic ((t (:italic t))))
     (bold-italic ((t (:bold t :italic t))))
     (region ((t (:background "dimgray"))))
     (secondary-selection ((t (:background "deepskyblue4"))))
     (magit-item-highlight ((t (:background "gray20"))))
     (underline ((t (:underline t))))
     (info-node ((t (:foreground "yellow" :bold t :italic t))))
     (info-menu-5 ((t (:underline t))))
     (info-xref ((t (:foreground "yellow" :bold t))))
     (diary-face ((t (:foreground "orange"))))
     (calendar-today-face ((t (:underline t))))
     (holiday-face ((t (:background "red"))))
     (show-paren-match-face ((t (:background "deepskyblue4"))))
     (show-paren-mismatch-face ((t (:foreground "white" :background "red"))))
     (paren-face ((t (:foreground "#303030"))))
     (font-lock-comment-face ((t (:foreground "#656763"))))
     (font-lock-string-face ((t (:foreground "#8AE234"))))
     (font-lock-keyword-face ((t (:foreground "cyan1"))))
     (font-lock-builtin-face ((t (:foreground "LightSteelBlue"))))
     (font-lock-function-name-face ((t (:foreground "gold"))))
     (font-lock-variable-name-face ((t (:foreground "light salmon"))))
     (font-lock-type-face ((t (:foreground "yellow1"))))
     (font-lock-constant-face ((t (:foreground "salmon"))))
     (font-lock-warning-face ((t (:foreground "gold" :bold t))))
     (blank-space-face ((t (:background "#1e2426"))))
     (blank-tab-face ((t (:foreground "black" :background "cornsilk"))))
     (highline-face ((t (:background "gray35"))))
     ;; can't seem to get colorize-nicks and erc-pals to work together
     ;;     (erc-pal-face ((t (nil))))
     (erc-pal-face ((t (:foreground "indianred"))))
     (eshell-ls-directory-face ((t (:foreground "green" :bold t))))
     (eshell-ls-symlink-face ((t (:foreground "Cyan" :bold t))))
     (eshell-ls-executable-face ((t (:foreground "orange" :bold t))))
     (eshell-ls-readonly-face ((t (:foreground "gray"))))
     (eshell-ls-unreadable-face ((t (:foreground "DarkGrey"))))
     (eshell-ls-special-face ((t (:foreground "Magenta" :bold t))))
     (eshell-ls-missing-face ((t (:foreground "Red" :bold t))))
     (eshell-ls-archive-face ((t (:foreground "Orchid" :bold t))))
     (eshell-ls-backup-face ((t (:foreground "LightSalmon"))))
     (eshell-ls-product-face ((t (:foreground "LightSalmon"))))
     (eshell-ls-clutter-face ((t (:foreground "blue" :bold t))))

     ;; Org
     ;; (org-hide ((t (:foreground "#2e3436"))))
     ;; (org-level-1 ((t (:bold t :foreground "dodger blue" :height 1.5))))
     ;; (org-level-2 ((t (:bold nil :foreground "#edd400" :height 1.2))))
     ;; (org-level-3 ((t (:bold t :foreground "#6ac214" :height 1.0))))
     ;; (org-level-4 ((t (:bold nil :foreground "tomato" :height 1.0))))
     ;; (org-date ((t (:underline t :foreground "magenta3"))))
     ;; (org-footnote  ((t (:underline t :foreground "magenta3"))))
     ;; (org-link ((t (:foreground "skyblue2" :background "#2e3436"))))
     ;; (org-special-keyword ((t (:foreground "brown"))))
     ;; (org-verbatim ((t (:foreground "#eeeeec" :underline t :slant italic))))
     ;; (org-block ((t (:foreground "#bbbbbc"))))
     ;; (org-quote ((t (:inherit org-block :slant italic))))
     ;; (org-verse ((t (:inherit org-block :slant italic))))
     ;; (org-todo ((t (:bold t :foreground "Red"))))
     ;; (org-done ((t (:bold t :foreground "ForestGreen"))))
     ;; (org-agenda-structure ((t (:weight bold :foreground "tomato"))))
     ;; (org-agenda-date ((t (:foreground "#6ac214"))))
     ;; (org-agenda-date-weekend ((t (:weight normal :foreground "dodger blue"))))
     ;; (org-agenda-date-today ((t (:weight bold :foreground "#edd400"))))


     (sgml-start-tag-face ((t (:foreground "mediumspringgreen"))))
     (custom-button-face ((t (:foreground "white"))))
     (sgml-ignored-face ((t (:foreground "gray20" :background "gray60"))))
     (sgml-doctype-face ((t (:foreground "orange"))))
     (sgml-sgml-face ((t (:foreground "yellow"))))
     (vc-annotate-face-0046FF ((t (:foreground "wheat" :background "black"))))
     (custom-documentation-face ((t (:foreground "white"))))
     (sgml-end-tag-face ((t (:foreground "greenyellow"))))
     (linemenu-face ((t (:background "gray30"))))
     (sgml-entity-face ((t (:foreground "gold"))))
     (message-header-to-face ((t (:foreground "floral white" :bold t))))
     (message-header-cc-face ((t (:foreground "ivory"))))
     (message-header-subject-face ((t (:foreground "papaya whip" :bold t))))
     (message-header-newsgroups-face ((t (:foreground "lavender blush" :bold t :italic t))))
     (message-header-other-face ((t (:foreground "pale turquoise"))))
     (message-header-name-face ((t (:foreground "light sky blue"))))
     (message-header-xheader-face ((t (:foreground "blue"))))
     (message-separator-face ((t (:foreground "sandy brown"))))
     (message-cited-text-face ((t (:foreground "plum1"))))
     (message-mml-face ((t (:foreground "ForestGreen"))))
     (gnus-group-news-1-face ((t (:foreground "white" :bold t))))
     (gnus-group-news-1-empty-face ((t (:foreground "white"))))
     (gnus-group-news-2-face ((t (:foreground "lightcyan" :bold t))))
     (gnus-group-news-2-empty-face ((t (:foreground "lightcyan"))))
     (gnus-group-news-3-face ((t (:foreground "tan" :bold t))))
     (gnus-group-news-3-empty-face ((t (:foreground "tan"))))
     (gnus-group-news-4-face ((t (:foreground "white" :bold t))))
     (gnus-group-news-4-empty-face ((t (:foreground "white"))))
     (gnus-group-news-5-face ((t (:foreground "wheat" :bold t))))
     (gnus-group-news-5-empty-face ((t (:foreground "wheat"))))
     (gnus-group-news-6-face ((t (:foreground "tan" :bold t))))
     (gnus-group-news-6-empty-face ((t (:foreground "tan"))))
     (gnus-group-news-low-face ((t (:foreground "DarkTurquoise" :bold t))))
     (gnus-group-news-low-empty-face ((t (:foreground "DarkTurquoise"))))
     (gnus-group-mail-1-face ((t (:foreground "white" :bold t))))
     (gnus-group-mail-1-empty-face ((t (:foreground "gray80"))))
     (gnus-group-mail-2-face ((t (:foreground "lightcyan" :bold t))))
     (gnus-group-mail-2-empty-face ((t (:foreground "lightcyan"))))
     (gnus-group-mail-3-face ((t (:foreground "tan" :bold t))))
     (gnus-group-mail-3-empty-face ((t (:foreground "tan"))))
     (gnus-group-mail-low-face ((t (:foreground "aquamarine4" :bold t))))
     (gnus-group-mail-low-empty-face ((t (:foreground "aquamarine4"))))
     (gnus-summary-selected-face ((t (:background "deepskyblue4" :underline t))))
     (gnus-summary-cancelled-face ((t (:foreground "black" :background "gray"))))
     (gnus-summary-high-ticked-face ((t (:foreground "gray70" :bold t))))
     (gnus-summary-low-ticked-face ((t (:foreground "gray70" :bold t))))
     (gnus-summary-normal-ticked-face ((t (:foreground "gray70" :bold t))))
     (gnus-summary-high-ancient-face ((t (:foreground "SkyBlue" :bold t))))
     (gnus-summary-low-ancient-face ((t (:foreground "SkyBlue" :italic t))))
     (gnus-summary-normal-ancient-face ((t (:foreground "SkyBlue"))))
     (gnus-summary-high-unread-face ((t (:bold t))))
     (gnus-summary-low-unread-face ((t (:italic t))))
     (gnus-summary-normal-unread-face ((t (nil))))
     (gnus-summary-high-read-face ((t (:foreground "PaleGreen" :bold t))))
     (gnus-summary-low-read-face ((t (:foreground "PaleGreen" :italic t))))
     (gnus-summary-normal-read-face ((t (:foreground "PaleGreen"))))
     (gnus-splash-face ((t (:foreground "gold"))))
     (font-latex-bold-face ((t (nil))))
     (font-latex-italic-face ((t (nil))))
     (font-latex-math-face ((t (nil))))
     (font-latex-sedate-face ((t (:foreground "Gray85"))))
     (font-latex-string-face ((t (:foreground "orange"))))
     (font-latex-warning-face ((t (:foreground "gold"))))
     (widget-documentation-face ((t (:foreground "lime green"))))
     (widget-button-face ((t (:bold t))))
     (widget-field-face ((t (:background "gray20"))))
     (widget-single-line-field-face ((t (:background "gray20"))))
     (widget-inactive-face ((t (:foreground "wheat"))))
     (widget-button-pressed-face ((t (:foreground "red"))))
     (custom-invalid-face ((t (:foreground "yellow" :background "red"))))
     (custom-rogue-face ((t (:foreground "pink" :background "black"))))
     (custom-modified-face ((t (:foreground "white" :background "blue"))))
     (custom-set-face ((t (:foreground "blue"))))
     (custom-changed-face ((t (:foreground "wheat" :background "skyblue"))))
     (custom-saved-face ((t (:underline t))))
     (custom-state-face ((t (:foreground "light green"))))
     (custom-variable-tag-face ((t (:foreground "skyblue" :underline t))))
     (custom-variable-button-face ((t (:bold t :underline t))))
     (custom-face-tag-face ((t (:foreground "white" :underline t))))
     (custom-group-tag-face-1 ((t (:foreground "pink" :underline t))))
     (custom-group-tag-face ((t (:foreground "skyblue" :underline t))))
     (swbuff-current-buffer-face ((t (:foreground "red" :bold t))))
     (ediff-current-diff-face-A ((t (:foreground "firebrick" :background "pale green"))))
     (ediff-current-diff-face-B ((t (:foreground "DarkOrchid" :background "Yellow"))))
     (ediff-current-diff-face-C ((t (:foreground "white" :background "indianred"))))
     (ediff-current-diff-face-Ancestor ((t (:foreground "Black" :background "VioletRed"))))
     (ediff-fine-diff-face-A ((t (:foreground "Navy" :background "sky blue"))))
     (ediff-fine-diff-face-B ((t (:foreground "Black" :background "cyan"))))
     (ediff-fine-diff-face-C ((t (:foreground "Black" :background "Turquoise"))))
     (ediff-fine-diff-face-Ancestor ((t (:foreground "Black" :background "Green"))))
     (ediff-even-diff-face-A ((t (:foreground "Black" :background "light grey"))))
     (ediff-even-diff-face-B ((t (:foreground "White" :background "Grey"))))
     (ediff-even-diff-face-C ((t (:foreground "Black" :background "light grey"))))
     (ediff-even-diff-face-Ancestor ((t (:foreground "White" :background "Grey"))))
     (ediff-odd-diff-face-A ((t (:foreground "White" :background "Grey"))))
     (ediff-odd-diff-face-B ((t (:foreground "Black" :background "light grey"))))
     (ediff-odd-diff-face-C ((t (:foreground "White" :background "Grey"))))
     (ediff-odd-diff-face-Ancestor ((t (:foreground "Black" :background "light grey"))))
     (gnus-emphasis-bold ((t (:bold t))))
     (gnus-emphasis-italic ((t (:italic t))))
     (gnus-emphasis-underline ((t (:foreground "white" :background "goldenrod4"))))
     (gnus-emphasis-underline-bold ((t (:foreground "black" :background "yellow" :bold t :underline t))))
     (gnus-emphasis-underline-italic ((t (:foreground "black" :background "yellow" :italic t :underline t))))
     (gnus-emphasis-bold-italic ((t (:bold t :italic t))))
     (gnus-emphasis-underline-bold-italic ((t (:foreground "black" :background "yellow" :bold t :italic t :underline t))))
     (gnus-emphasis-highlight-words ((t (:foreground "yellow" :background "black"))))
     (gnus-signature-face ((t (:italic t))))
     (gnus-header-from-face ((t (:foreground "wheat"))))
     (gnus-header-subject-face ((t (:foreground "wheat" :bold t))))
     (gnus-header-newsgroups-face ((t (:foreground "wheat" :italic t))))
     (gnus-header-name-face ((t (:foreground "white"))))
     (gnus-header-content-face ((t (:foreground "tan" :italic t))))
     (gnus-filterhist-face-1 ((t (nil))))
     (gnus-splash ((t (:foreground "Brown"))))
     (gnus-cite-attribution-face ((t (:italic t))))
     (gnus-cite-face-1 ((t (:foreground "light blue"))))
     (gnus-cite-face-2 ((t (:foreground "light cyan"))))
     (gnus-cite-face-3 ((t (:foreground "light yellow"))))
     (gnus-cite-face-4 ((t (:foreground "light pink"))))
     (gnus-cite-face-5 ((t (:foreground "pale green"))))
     (gnus-cite-face-6 ((t (:foreground "beige"))))
     (gnus-cite-face-7 ((t (:foreground "orange"))))
     (gnus-cite-face-8 ((t (:foreground "magenta"))))
     (gnus-cite-face-9 ((t (:foreground "violet"))))
     (gnus-cite-face-10 ((t (:foreground "medium purple"))))
     (gnus-cite-face-11 ((t (:foreground "turquoise")))))))

