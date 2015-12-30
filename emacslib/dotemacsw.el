
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; @gitlib: path-to
  ;; check OS type
  (cond
   ((string-equal system-type "windows-nt") ; Microsoft Windows
    (and (progn
      (concat (message "Microsoft Windows: ") (setq path-to "D:/gitlib/orglib/emacslib/")) ) 
          (progn  
          (concat (message "Microsoft Windows: ") (setq git-to "D:/bitlib/orglib/")) )))

   ((string-equal system-type "darwin") ; Mac OS X
    (and (progn   
        (concat (message "Mac OS X") (setq path-to "/Volumes/xiaoanh/gitlib/emacslib/")))
   (progn
  (concat (message "Mac OS X") (setq git-to "/Volumes/xiaoanh/bitlib/orglib/")))) )

   ((string-equal system-type "gnu/linux") ; linux
    (progn
      (message "Linux"))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; font. m-x just once, support CHN, /141104
  (set-locale-environment "English")
  ; @key, DONE [2015-08-07]
  (set-language-environment "utf-8")
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  
  ;; Face set-faces, /[2014-10-23]
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "gray85" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Menlo")))))
  (put 'upcase-region 'disabled nil)
  (put 'downcase-region 'disabled nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elfeed-db-directory (concat path-to "elfeed_db"))
 '(elfeed-feeds (quote ("youtube.com" "http://nullprogram.com/feed/" "http://www.terminally-incoherent.com/blog/feed/")))
  '(org-agenda-files (list (concat git-to "paper.org") (concat git-to "study.org") (concat git-to "journal.org") (concat git-to "project.org") (concat git-to "task.org") (concat git-to  "note.org")))
;  '(org-agenda-files (quote ("d:/bitlib/orglib/paper.org" "d:/bitlib/orglib/study.org" "d:/bitlib/orglib/journal.org" "d:/bitlib/orglib/project.org" "d:/bitlib/orglib/task.org" "d:/bitlib/orglib/note.org")))
; '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(truncate-partial-width-windows nil)
 '(user-full-name "xiaoanh"))

;;; init.el --- Where all the magic begins
  ;;
  ;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
  ;; embedded in literate Org-mode files.
  
  ;; Load up Org Mode and (now included) Org Babel for elisp embedded in Org Mode files
  ; (setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))
  ; (setq org-dir (expand-file-name "lisp" (expand-file-name "org-mode-master" dotfiles-dir)))
  ; (setq org-contrib-dir (expand-file-name "lisp" (expand-file-name "contrib" org-dir)))
  (setq dotfiles-dir path-to)
  (setq org-dir (expand-file-name "lisp" (expand-file-name "org-mode-master" dotfiles-dir)))
  (setq org-contrib-dir (expand-file-name "lisp" (expand-file-name "contrib" org-dir)))

    ;; load up Org-mode and Org-babel
  (require 'org-install)
  (require 'ob-tangle)
  (setq initial-user-file (concat path-to "dotemacsw.el"))
  ;; load up all literate org-mode files in this directory
  ; (mapc #'org-babel-load-file (directory-files dotfiles-dir t "\\.org$"))
; (org-babel-load-file (concat path-to "dotemacsw.org"))
  ;;; init.el ends here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; @mac, ctrl [2015-12-25]
  (setq mac-command-modifier 'ctrl)
  (define-key global-map [?\M-¥] "\\")
  
  (global-set-key "\C-x\C-b" 'helm-buffers-list) 
  ; cancel bs [2015-12-30]
  ; (global-set-key "\C-x\C-b" 'bs-show) 
     ;; or another key
  ; (global-set-key "\M-p"  'bs-cycle-previous)
  ; (global-set-key "\M-n"  'bs-cycle-next)
; comment-region, nice /141117.
(global-set-key (kbd "C-c C-/") 'comment-region)
(global-set-key (kbd "C-c C-/") 'uncomment-region)
(global-set-key [?\C-c ?\C-/] 'comment-or-uncomment-region)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; @basic: time-stamp, [2014-11-06]
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-format "%:u %04y/%02m/%02d %02H:%02M:%02S")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; @defun insert-date
(defun insert-date (prefix)
    "Insert the current date. With prefix-argument, use ISO format. With
   two prefix arguments, write out the day and month name."
    (interactive "P")
    (let ((format (cond
;            ((not prefix) "%Y-%m-%d")
                   ((not prefix) "[%Y-%m-%d]")
                   ((equal prefix '(4)) "%d.%m.%Y")
                   ((equal prefix '(16)) "%A, %d. %B %Y")))
          (system-time-locale "de_DE"))
      (insert (format-time-string format))))
(global-set-key (kbd "C-c d") 'insert-date)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; @eldoc [2015-12-30]
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
; org-eldoc, @ln: https://bitbucket.org/ukaszg/org-eldoc
; org-eldoc is part of org-mode contrib repository
; \gitlib\orglib\emacslib\org-mode-master\contrib\lisp
; (setq org-contrib-dir (expand-file-name "lisp" (expand-file-name "contrib" org-dir)))
; (setq org-contrib-dir (expand-file-name "lisp" (expand-file-name "contrib" org-dir)))
(add-to-list 'load-path org-contrib-dir)
; (require 'org-eldoc)
; (org-eldoc-hook-setup)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; @anything, why not working
; @err, can  not open load file anything-config
  ;; (add-to-list 'load-path (concat path-to "anything/")
  ;; (require 'anything-config)
  ;; (setq anything-sources
  ;;       (list anything-c-source-buffers
  ;;         anything-c-source-locate
  ;;             anything-c-source-file-name-history
  ;;             anything-c-source-info-pages
  ;;             anything-c-source-man-pages
  ;;             anything-c-source-file-cache
  ;;             anything-c-source-emacs-commands))
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; https://github.com/jwiegley/emacs-async
(add-to-list 'load-path (concat path-to "emacs-async-master/"))
(autoload 'dired-async-mode "dired-async.el" nil t)
(dired-async-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; @anything to @helm [2015-12-25]
  ; https://github.com/emacs-helm/helm
;; [Facultative] Only if you have installed async.
  (add-to-list 'load-path (concat path-to "helm-master/"))
;  (package-install 'helm)
; "Cannot open load file" "helm-autoloads [2015-12-25]
; @success, @mac after make [2015-12-25] 
  (require 'helm-config)
  (global-set-key (kbd "C-c h") 'helm-mini)
  (helm-mode 1)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; https://github.com/nonsequitur/smex
; A smart M-x enhancement for Emacs.  [2015-07-15]
(add-to-list 'load-path (concat path-to "smex-master/"))
(require 'smex) 
; Not needed if you use package.el
(smex-initialize) 
; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    ;;  @helm, helm-bibtex
    ; @err, can not load parsebib
    ; @success, Cannot open load file -> (add-to-list ‘load-path “/Users/user_name/bin/”)
    ; ;; Requirements are parsebib, helm, s, dash, and f.  The easiest way
    ; *** @parsebib @google, https://github.com/joostkremers/parsebib, @Preamble, @String, or @Comment
    ; https://github.com/tmalsburg/helm-bibtex
    ; *** @dash can not load parsebib
    ; https://github.com/magnars/dash.el
    ; *** @s can not load s and f
    ; https://github.com/magnars/s.el
    ; https://github.com/rejeep/f.el
    ; *** @success, parsebib, dash, s and f finally
    (add-to-list 'load-path (concat path-to "dash.el-master/"))
    (require 'dash) 
    (add-to-list 'load-path (concat path-to "s.el-master/"))
    (require 's)
    (add-to-list 'load-path (concat path-to "f.el-master/"))
    (require 'f)
    ; A modern list library for Emacs 
    ; All functions and constructs in the library are prefixed with a dash (-).
    
    (add-to-list 'load-path (concat path-to "parsebib-master/"))
    (require 'parsebib)
    (add-to-list 'load-path (concat path-to "helm-bibtex-master/"))
    (autoload 'helm-bibtex "helm-bibtex" "" t)
    ; (setq helm-bibtex-bibliography '("/path/to/bibtex-file-1.bib" "/path/to/bibtex-file-2.bib"))
    ; helm-bibtex, bitlib->gitlib [2015-12-28]
    (setq helm-bibtex-bibliography (list (concat path-to "bib1410.bib") (concat path-to "bib1505.bib") (concat path-to "bib1506.bib") ))
;    (setq helm-bibtex-bibliography '( (concat path-to "bib1410.bib") (concat path-to "bib1505.bib") (concat path-to "bib1506.bib") ))
  ;  (setq helm-bibtex-bibliography '("D:/gitlib/bib1410.bib" "D:/gitlib/bib1505.bib" "D:/gitlib/bib1506.bib" ))
  ;  (setq helm-bibtex-bibliography '("D:/gitlib/orglib/bib1410.bib" "D:/gitlib/orglib/bib1505.bib" "D:/gitlib/orglib/bib1506.bib" ))
    ; (setq helm-bibtex-bibliography '("D:/bitlib/orglib/bib1410.bib" "D:/bitlib/orglib/bib1505.bib" "D:/bitlib/orglib/bib1506.bib" ))
 
    (setq helm-bibtex-library-path (list (concat git-to "paper1512/") ))    
;    (setq helm-bibtex-library-path (concat git-to "paper1512/") )    
;    (setq helm-bibtex-library-path "D:/bitlib/orglib/paper1512/" )
    ; (setq helm-bibtex-library-path '("/path1/to/pdfs" "/path2/to/pdfs"))
    ; (setq helm-bibtex-notes-path "/path/to/notes.org")
    (setq helm-bibtex-notes-path "D:/gitlib/bib_notes.org")
    (setq helm-bibtex-pdf-symbol "⌘")
    (setq helm-bibtex-notes-symbol "✎")
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path path-to)  
(require 'linum)
(global-linum-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  C:\Program Files (x86)\Git [2015-12-23]
;; (add-to-list 'load-path (concat path-to "git-emacs-master/"))
;; ;(add-to-list 'load-path "C:/git-emacs-master")
;; ;(add-to-list 'load-path "C:/Program Files (x86)/git-emacs-master")
;; (if (string-equal system-type "windows-nt")
;; (progn (add-to-list 'exec-path "C:/Program Files (x86)/Git/bin")))
;; ; * @emacs
;; ; (add-to-list 'exec-path "C:/Program Files (x86)/Git/bin")
;; (require 'git-emacs)
;; ; @key, @success, 'exec-path, ctrl-h v check value
;; ; permisson denied, git
;; ; add its path (location) to the value of exec-path.

;; ; ** @git-emacs, defvar, ctrl-h v: git--repository-dir for git-init
;; (setq git--repository-dir git-to)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; highlight：hi-line.el,emacs inside, /[2014-11-06]
; (require 'hl-line)  
; (global-hl-line-mode t) 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete, [2014-11-06]
(add-to-list 'load-path (concat path-to "auto-complete-master/"))
; (add-to-list 'load-path (concat path-to "auto-complete-master"))
; (add-to-list 'ac-dictionary-directories "D:/dotemacsw/auto-complete-master/ac-dict")
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories (concat path-to "auto-complete-master/ac-dict"))
(auto-complete-mode 1) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; @win
(if (string-equal system-type "windows-nt")
(and (progn (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin"))
(setq-default ispell-program-name "aspell")
(progn (setq ispell-personal-dictionary "C:/Program Files (x86)/Aspell/dict"))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; @mac, [2015-12-28]
(if (string-equal system-type "darwin")
(and (setq ispell-program-name "/usr/local/bin/ispell")
(setq-default ispell-program-name "/usr/local/bin/aspell")))

; @seamless, for both 
(require 'ispell)
(setq text-mode-hook '(lambda()  (flyspell-mode t)  ) )
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(ispell-minor-mode) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path (concat path-to "auto-complete-master/"))
; (add-to-list 'load-path "D:/dotemacsw/auto-complete-master/")
(require 'ac-ispell)
(eval-after-load "auto-complete" '(progn (ac-ispell-setup)))
(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
(add-hook 'mail-mode-hook 'ac-ispell-ac-setup)

; error enabling flyspell mode, ispell-set-spellcheker, /141106
(setq flyspell-issue-welcome-flag nil)
;; fix flyspell problem
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Ctex: C:\CTEX\MiKTeX\miktex\bin
;(setq path "C:\CTEX\MiKTeX\miktex\bin:")
;(setenv "PATH" path)
 
;; Auctex, /[2014-10-23]
;; (add-to-list 'load-path (concat path-to "site-lisp/site-start.d"))
;; (add-to-list 'load-path (concat path-to "site-lisp/site-start.d"))  ; very important, /20141023
;; (load "auctex.el" nil t t)
;; (load "preview-latex.el" nil t t)
;; (setq TeX-auto-save t)
;; (setq TeX-parse-self t)
;; (setq-default TeX-master nil)
;; (setq preview-scale-function 1.3)
;; (setq LaTeX-math-menu-unicode t)
;; (setq TeX-insert-braces nil)
;; (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; ;; RefTeX with AUCTeX
;; ;; reftex, /141023
;; (setq reftex-plug-into-auctex t)
;; (add-hook 'latex-mode-hook 'turn-on-reftex) 
;; (setq reftex-cite-format 'natbib) 
 ; cite-style, /141023


;; "XeLaTeX", xetex, / [2014-11-03]
;(setq TeX-PDF-mode t) ; annual, c-c,c-t, c -p, /140318
;; (add-hook 'LaTeX-mode-hook (lambda()
;;                               (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
;;                               (setq TeX-command-default "XeLaTeX")
;;                                  (setq TeX-save-query  nil )
;;                                   (setq TeX-show-compilation t) 
;;                                                                ))
;; (setq tex-engine 'xetex)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq auto-save-default t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; @mew, email, @success, work [2015-12-21]
    ;; load Mew, [2014-11-07]
    ;; (add-to-list 'load-path (concat path-to "mew-lisp"))
    ;; (autoload 'mew "mew" nil t)
    ;; (autoload 'mew-send "mew" nil t)
    ;; (setq mew-icon-directory (concat path-to "mew-lisp/etc"))
    ;; (setq mew-use-cached-passwd t)
    ;; (if (boundp 'read-mail-command)
    ;; (setq read-mail-command 'mew))
    ;; (autoload 'mew-user-agent-compose "mew" nil t)
    ;; (if (boundp 'mail-user-agent)
    ;; (setq mail-user-agent 'mew-user-agent))
    ;; (if (fboundp 'define-mail-user-agent)
    ;; (define-mail-user-agent
    ;; 'mew-user-agent
    ;; 'mew-user-agent-compose
    ;; 'mew-draft-send-message
    ;; 'mew-draft-kill
    ;; 'mew-send-hook))
    ;; (setq mew-pop-size 0)
    ;; (setq mew-smtp-auth-list nil)
    ;; (setq toolbar-mail-reader 'Mew)
    ;; (set-default 'mew-decode-quoted 't)
    ;; (when (boundp 'utf-translate-cjk)
    ;; (setq utf-translate-cjk t)
    ;; (custom-set-variables
    ;; '(utf-translate-cjk t)))
    ;; (if (fboundp 'utf-translate-cjk-mode)
    ;; (utf-translate-cjk-mode 1))
    ;; (setq mew-config-alist '(
    ;; ("default"
    ;; ("name" . "xiaoanhuang")
    ;; ("user" . "xiaoanhuang")
    ;; ("smtp-server" . "smtp.163.com")
    ;; ("smtp-port" . "25")
    ;; ("pop-server" . "pop3.163.com")
    ;; ("pop-port" . "110")
    ;; ("smtp-user" . "xiaoanhuang")
    ;; ("pop-user" . "xiaoanhuang")
    ;; ("mail-domain" . "163.com")
    ;; ("mailbox-type" . pop)
    ;; ("pop-auth" . pass)
    ;; ("smtp-auth-list" . ("PLAIN" "LOGIN" "CRAM-MD5"))
    ;; )
    ;; ))
;     (setq mew-ssl-verify-level 0)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; predictive install location
(add-to-list 'load-path (concat path-to "predictive"))
     ;; dictionary locations
(add-to-list 'load-path (concat path-to "predictive/latex/"))
(add-to-list 'load-path (concat path-to "predictive/texinfo/"))
 (add-to-list 'load-path (concat path-to "predictive/html/"))
 (autoload 'predictive-mode (concat path-to "predictive/") "Turn on Predictive Completion Mode." t)
;    (autoload 'predictive-mode (concat path-to "predictive/" "Turn on Predictive Completion Mode." t))
     ;; load predictive package
;     (require 'predictive)
;(autoload 'predictive-mode "D:/Emacs14/predictive/predictive" "Turn on Predictive Completion Mode." t)
; delete predictive, /141110
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path path-to)
(require 'session)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; *** @org-mobile, [2014-12-16]
; comment org-mobile-files [2015-12-28]
; (setq org-mobile-files (quote ( (concat git-to "HXA.OFDM.PON.org")  (concat git-to "journal.org")  (concat git-to "project.org")  (concat git-to "task.org")  (concat git-to "note.org") )))
; (setq org-mobile-index-file "D:/GTD18/inbox.org")
; (setq org-mobile-index-file "inbox.org")
; (setq org-mobile-inbox-for-pull "D:/GTD18/fromMobile.org")
; (setq org-mobile-inbox-for-pull "D:/GTD18/inbox.org")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; *** @org-capture, / [2014-11-27]
(setq org-capture-templates '(
("t" "Task" entry (file+headline (concat git-to "task.org") "Tasks") "* TODO %?\n %i\n %a")
("j" "Journal" entry (file+datetree (concat git-to "journal.org")) "* %?\nEntered on %U\n %i\n %a")
("n" "Note" entry (file+datetree (concat git-to "note.org") ) "* %?\nEntered on %U\n %i\n %a")
("p" "Project" entry (file+datetree (concat git-to "project.org") ) "* %?\nEntered on %U\n %i\n %a")
))
; M-x org-capture-import-remember-templates RET

; (define-key global-map "\C-cc" ’org-capture)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; *** @org-remember, [2014-11-19]
(define-key global-map "\C-cr" 'org-remember)

; (org-remember-insinuate)
; must add remember-mode-hook, /141119
  (setq remember-annotation-functions '(org-remember-annotation))
  (setq remember-handler-functions '(org-remember-handler))
  (add-hook 'remember-mode-hook 'org-remember-apply-template)

; (setq org-directory (concat git-to "/") 
(setq org-remember-templates '(("New" ?n "* %? %t \n %i\n %a" (concat git-to "inbox.org") ) ("Task" ?t "** TODO %?\n %i\n %a" (concat git-to "task.org") "Tasks") ("Calendar" ?c "** TODO %?\n %i\n %a" (concat git-to "task.org") "Tasks") ("Idea" ?i "** %?\n %i\n %a" (concat git-to "task.org") "Ideas") ("Note" ?r "* %?\n %i\n %a" (concat git-to "note.org") ) ("Project" ?p "** %?\n %i\n %a" (concat git-to "project.org") %g)  ("Journal" ?j "* %?\n %i\n %a" (concat git-to "journal.org") )  )) 

; (setq org-directory git-to) 
; (setq org-directory "D:/GTD18/") 
(setq org-default-notes-file (concat git-to "inbox.org"))  ; [2015-12-30]
; (setq org-default-notes-file (concat org-directory "inbox.org"))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; *** @org-todo, [2014-11-19]
(setq org-todo-keywords
  '((type "Work(w!)" "Huang(h!)" "|")
;    (type "Work(w!)" "Huang(h!)" "Study(s!)" "|")
    (sequence "PENDING(p!)" "TODO(t!)"  "|" "DONE(d!)" "ABORT(a@/!)")
))
(setq org-todo-keyword-faces
  '(("Work" .      (:background "red" :foreground "white" :weight bold))
;    ("Study" .      (:background "white" :foreground "red" :weight bold))
; <x-bg-color>, background can not be White, <2014-12-23>
;    ("Study" .      (:background "gray" :foreground "red" :weight bold))
;    ("Fun" .      (:foreground "MediumBlue" :weight bold)) 
    
    ("Huang" .      (:background "red" :foreground "orange" :weight bold)) 
    ("PENDING" .   (:background "LightGreen" :foreground "gray" :weight bold))
    ("TODO" .      (:background "DarkOrange" :foreground "black" :weight bold))
    ("DONE" .      (:background "azure" :foreground "Darkgreen" :weight bold)) 
    ("ABORT" .     (:background "gray" :foreground "black"))
))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; *** @org-setting, [2014-11-19]
(setq org-tag-alist '(("@Fit" . ?f) ("@huang" . ?h) ("@home" . ?m) ("@Lang" . ?l) ("@Basic" . ?b) ("@Emacs" . ?e) ("@paper" . ?p) ("@work" . ?w)   ("@DOCSIS" . ?d) ("@Meeting" . ?M) ("@Famous" .?F)))

;; priority setting, [2014-11-19] 
; lowest can not be D, must E, /141119
(setq org-highest-priority ?A)
(setq org-lowest-priority  ?E)
(setq org-default-priority ?E)

;; org face 
(setq org-priority-faces
  '((?A . (:background "red" :foreground "white" :weight bold))
    (?B . (:background "DarkOrange" :foreground "white" :weight bold))
    (?C . (:background "yellow" :foreground "DarkGreen" :weight bold))
    (?D . (:background "DodgerBlue" :foreground "black" :weight bold))
    (?E . (:background "SkyBlue" :foreground "black" :weight bold))
))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ** DONE @bib
; http://blog.waterlin.org/articles/bind-emacs-org-mode-with-bibtex.html
; (concat path-to "bib1307.bib")
(setq reftex-default-bibliography
      (list
       (concat path-to "bib1307.bib")  (concat path-to "bib1410.bib")   (concat path-to"bib1506.bib")  (concat path-to"bib1505.bib")  )) ; @success, list [2015-12-30]

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
;; *** @bib: @auto: @org-mode-reftex-setup, "C-c (",  RefTeX, [2015-12-30]
; @key, @redo, first setq org-link-abbrev-alist [2015-12-30]
; @key: missing ), @org-mode-reftex-setup, [2015-12-30]

; (concat git-to "notes.org")
; D:/gitlib/orglib/emacslib
;;  org-mode reftex, [2015-01-27]
;; @ln: https://wiki.freebsdchina.org/doc/r/reference
;; define org-mode-reftex-search

(defun org-mode-reftex-search ()
 ;; jump to the notes for the paper pointed to at from reftex search
 (interactive)
 (org-open-link-from-string (format "[[notes:%s]]" (reftex-citation t))))

; @org-link, [2015-12-30]
; replace D: to /Volumes/xiaoanh
(cond 
((string-equal system-type "darwin")
(setq org-link-abbrev-alist
 '(("bib" . "/Volumes/xiaoanh/gitlib/orglib/emacslib/bib1410.bib::%s, /Volumes/xiaoanh/gitlib/orglib/emacslib/bib1505.bib::%s, /Volumes/xiaoanh/gitlib/orglib/emacslib/bib1506.bib::%s")
   ("notes" .  "/Volumes/xiaoanh/gitlib/orglib/emacslib/bib_notes.org::%s")
   ("figs" . "/Volumes/xiaoanh/figure1411/%s.png")
;   ("papers" . "D:/bib1410/paper1410/%s.pdf")
   ("papers" . "/Volumes/xiaoanh/bitlib/orglib/paper1512/%s.pdf"))))
((string-equal system-type "windows-nt")
(setq org-link-abbrev-alist
 '(("bib" . "D:/gitlib/orglib/emacslib/bib1410.bib::%s, D:/gitlib/orglib/emacslib/bib1505.bib::%s, D:/gitlib/orglib/emacslib/bib1506.bib::%s")
   ("notes" .  "D:/gitlib/orglib/emacslib/bib_notes.org::%s")
;   ("notes" . "(concat git-to "notes.org") ::%s")
;  (invalid-read-syntax ". in wrong context")
;    ("notes" . (concat git-to "notes.org::%s")
   ("figs" . "D:/figure1411/%s.png")
;   ("papers" . "D:/bib1410/paper1410/%s.pdf")
   ("papers" . "D:/bitlib/orglib/paper1512/%s.pdf")))))

(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name) (file-exists-p (buffer-file-name))
       (progn
    ;; enable auto-revert-mode to update reftex when bibtex file changes on disk
    (global-auto-revert-mode t)
    (reftex-parse-all)
    ;; add a custom reftex cite format to insert links
    (reftex-set-cite-format
      '((?b . "[[bib:%l][%l-bib]]")
        (?c . "\\cite{%l}")
        (?n . "[[notes:%l][%l-notes]]")
        (?p . "[[papers:%l][%l-paper]]")
        (?t . "%t")
        (?h . "** %t\n:PROPERTIES:\n:Custom_ID: %l\n:END:\n[[papers:%l][%l-paper]]"))))))

(define-key org-mode-map (kbd "C-c )") 'reftex-citation) ; @success, list [2015-12-30]
  ;; binding of  ”C-c (” to org-mode-reftex-search
(define-key org-mode-map (kbd "C-c (") 'org-mode-reftex-search)
(add-hook 'org-mode-hook 'org-mode-reftex-setup)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; *** Epresent [2014-12-10]
; Debugger entered--Lisp error: (file-error "Cannot open load file" "ox")  require(ox)
; (add-to-list 'load-path (concat path-to "epresent-master"))
; (require 'epresent)
; epresent and reveal fail, due to ox missing and latest org-mode 8.0, [2015-07-07]

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; *** @ditaa, [2015-07-02]
; (setq org-ditaa-jar-path “~/.emacs.d/plugins/ditaa/ditaa0_9.jar”) 
;(setq org-plantuml-jar-path “~/java/plantuml.jar”)
; (add-hook ‘org-babel-after-execute-hook ‘org-display-inline-images ‘append)
; (org-babel-do-load-languages 'org-babel-load-languages '((ditaa . t))) 
; this line activates ditaa
; can not find ditaa.jar can be found in contrib/scripts
; C:\Users\xiaoanh\Downloads\Emacs24.3\lisp
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; https://github.com/tmalsburg/helm-bibtex
  ; @mac, helm-bibtex-pdf-open-function
  ; m-x getenv | setenv | eval-expression 
  ; (defun helm-open-file-with-default-tool) in helm-utils.el
  (cond 
  ((string-equal system-type "darwin") ; @mac
  (setq helm-bibtex-pdf-open-function
    (lambda (fpath)
      (start-process "skim" "*skim*" "open" (concat "-a /Applications/Skim.app " fpath))))))
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; https://github.com/tmalsburg/helm-bibtex
  ; @win
  ; emacs  AcroRd32.exe
  ; permission denied open
  ; C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe 
;;   (setq local-pdf-viewer
;;         (cond
;;          ((eq 'windows-nt system-type)
;;           "/c/Program\\ Files\\ \\(x86\\)/Adobe/Acrobat \\ Reader \\ DC /Reader/AcroRd32.exe")
;; ;          "/cygdrive/c/Program\\ Files\\ \\(x86\\)/Adobe/Reader\\ 10.0/Reader/AcroRd32.exe")
;;          ((eq 'gnu/linux system-type) "okular")
;;          ((eq 'darwin system-type) "open")))
  
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ; @ln: http://endlessparentheses.com/init-org-Without-org-mode.html
  ; nth, file-attributes, time-less-p
  ; number-or-marker-p nil
  ; p is predicate, | indicate

  ; DEFVAR and DEFPARAMETER introduce global dynamic variables. 
  ;; (setq user-emacs-directory path-to)
  ;; ; (defvar user-emacs-directory path-to)
  ;; (expand-file-name "dotemacsw.org" user-emacs-directory)
  ;; (expand-file-name "dotemacsw.el" path-to)
  ;; (nth 5 (file-attributes init-source-org-file))
  ;; (nth 5 (file-attributes init-source-el-file))
  ;; (time-less-p (nth 5 (file-attributes init-source-org-file)) (nth 5 (file-attributes init-source-el-file)))
  ;; (fboundp 'org-babel-load-file)    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; (defvar init-source-org-file (expand-file-name "dotemacsw.org" path-to)
  ;;   "The file that our emacs initialization comes form") 
  ;; (defvar init-source-el-file (expand-file-name "dotemacsw.el" path-to)
  ;;   "The file that our emacs initialization is generated into")
  
  ;; (if (file-exists-p init-source-org-file)
  ;;   (if (and (file-exists-p init-source-el-file)
  ;;            (time-less-p (nth 5 (file-attributes init-source-org-file)) (nth 5 (file-attributes init-source-el-file))))
  ;;       (load-file init-source-el-file)
  ;;     (if (fboundp 'org-babel-load-file) 
  ;; ; ' disqus syntax highlighting is lame
  ;;         (org-babel-load-file init-source-org-file)
  ;;       (message "Function not found: org-babel-load-file")
  ;;       (load-file init-source-el-file)))
  ;;   (error "Init org file '%s' missing." init-source-org-file))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
