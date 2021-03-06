
; Time-stamp: "Xiaoan1986 2016/01/15 21:53:43"
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;       
        ; @gitlib: path-to
          ;; check OS type
          (cond
           ((string-equal system-type "windows-nt") ; Microsoft Windows
            (and (progn
              (concat (message "Microsoft Windows: ") (setq path-to "D:/gitlib/orglib/emacslib/")) ) 
                  (progn  
                  (concat (message "Microsoft Windows: ") (setq git-to "D:/bitlib/orglib/")) )))
        ; @bitlib: git-to, is for org files
           ((string-equal system-type "darwin") ; Mac OS X
            (and (progn   
                (concat (message "Mac OS X") (setq path-to "/Volumes/xiaoanh/gitlib/emacslib/")))
           (progn
          (concat (message "Mac OS X") (setq git-to "/Volumes/xiaoanh/bitlib/orglib/")))) )

           ((string-equal system-type "gnu/linux") ; linux
            (progn
              (message "Linux"))))
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

              ;;; init.el --- Where all the magic begins
              ;;
              ;; This file loads Org-mode and then loads the rest of our Emacs initialization from Emacs lisp
              ;; embedded in literate Org-mode files.
              
              ;; Load up Org Mode and (now included) Org Babel for elisp embedded in Org Mode files
              ; (setq dotfiles-dir (file-name-directory (or (buffer-file-name) load-file-name)))
              ; (setq org-dir (expand-file-name "lisp" (expand-file-name "org-mode-master" dotfiles-dir)))
              ; (setq org-contrib-dir (expand-file-name "lisp" (expand-file-name "contrib" org-dir)))
        ;      (setq dotfiles-dir path-to)
              (defvar org-dir (expand-file-name "lisp" (expand-file-name "org-mode-master" path-to)))
              (defvar org-contrib-dir (expand-file-name "lisp" (expand-file-name "contrib"  (expand-file-name "org-mode-master" path-to)))) 
             ; @key: contrib dir @err, [2016-01-04]
             ; (setq org-contrib-dir (expand-file-name "lisp" (expand-file-name "contrib" org-dir)))
          
                ;; load up Org-mode and Org-babel
    ;          (require 'org)
              (require 'org-install)
              (require 'ob-tangle)

; (setq initial-user-file (concat path-to "dotemacsw.el"))

              ;; load up all literate org-mode files in this directory
    ;          (mapc #'org-babel-load-file (directory-files path-to t "\\.org$"))

              ;; (global-auto-revert-mode -1)
              ;; (global-set-key (kbd "C-c i")
              ;;           (lambda() (interactive) (org-babel-load-file (concat path-to "dotemacswrg.org"))))
                                        ; (expand-file-name ".." path-to)
                                        ; DONE [2016-01-07]
                                        ; @mac, @key: ln -s /Volumes/xiaoanh/gitlib/dotemacsw.el ~/.emacs.el
(setq initial-user-file (concat (expand-file-name "../" path-to) "dotemacsw.el"))
 (global-set-key (kbd "C-c i")
                        (lambda() (interactive) (org-babel-load-file (concat  (expand-file-name "../" path-to)  "dotemacswrg.org"))))
              ; @ln: http://uwabami.junkhub.org/log/?date=20111213
              ;; (defun my:load-org-file (file)
              ;;      "load org file"
              ;;     (org-babel-load-file  (concat path-to file)))
              ;;  (my:load-org-file "dotemacsw.org")

                                        ;   (org-babel-load-file (concat path-to "dotemacsw.org"))

              ;;; init.el ends here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                        ; @mac, @setenv, [2016-01-07]
(cond
 ((string-equal system-type "darwin") ; Mac OS X
  (and (setq texlive-root "/usr/texbin:")
  (setq path "/bin:/usr/bin:/usr/local/bin:/usr/bin:/usr/local/texlive/2013/bin/x86_64-darwin:/usr/local/cellar/ghostscript/9.07/bin:")
  (setenv "PATH" path))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;; font. m-x just once, support CHN, /141104
  (set-locale-environment "English")
  ; @key, DONE [2015-08-07]
  (set-language-environment "utf-8")
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (prefer-coding-system 'utf-8)
  
  ;; Face set-faces, [2014-10-23]
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; @win, http://mirror.hust.edu.cn/gnu/emacs/
 ; invalid function: add-function for (helm-mode 1), [2016-01-03]
 ; mac-control, mac-command, mac-option
 ; mac-command-modifier is a variable defined in `C source code'.
 ; Its value is alt
 ; Original value was meta
(cond 
((string-equal system-type "darwin" )
(and (setq mac-option-modifier 'meta)
(setq mac-command-modifier 'ctrl))))

   ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
   ;; @mac, ctrl [2015-12-25]
  ;  (setq mac-command-modifier 'alt)
  ;  (setq mac-command-modifier 'ctrl)
  ; (define-key global-map [?\M-¥] "\\")
  
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
  ; @anything to @helm [2015-12-25]
  ; https://github.com/emacs-helm/helm
;; [Facultative] Only if you have installed async.
  (add-to-list 'load-path (concat path-to "helm-master/"))
;  (package-install 'helm)
; "Cannot open load file" "helm-autoloads [2015-12-25]
; @success, @mac after make [2015-12-25] 
  (require 'helm-config)
  (global-set-key (kbd "C-c h") 'helm-mini)
; (helm-mode 1)
; invalid function: add-function for (helm-mode 1), [2016-01-03]

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; ** @kbd,  [2016-01-07]
(global-set-key "\C-x\C-b" 'helm-buffers-list) 
    ; cancel bs [2015-12-30]
    ; (global-set-key "\C-x\C-b" 'bs-show) 
       ;; or another key
    ; (global-set-key "\M-p"  'bs-cycle-previous)
    ; (global-set-key "\M-n"  'bs-cycle-next)

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                        ; @org-publish, [2016-01-08]
        ; @err, org-publish-org-to-html is void
                                        ; http://comments.gmane.org/gmane.emacs.orgmode/76412

                                        ; http://dayigu.github.io/WhyUseOrgModeToWriteBlog.html
                                        ; @github, [2016-01-08]
                                        ; create orgblog and xiaoanh.github.com dir, [2016-01-08]
;(setq path-orgblog  (concat (expand-file-name "../" path-to) "orgblog"))
;(setq path-orgpublish  (concat (expand-file-name "../" path-to) "xiaoanh.github.io"))
(require 'org)
(require 'ox-publish)
                                        ; (require 'org-publish)
                                        ; (list path-orgblog)
                                        ;  "org-publish", which belongs to the old framework.
                                        ;  try requiring  "ox-publish" instead.
                                        ; replacing "org-publish-org-to-html" by "org-html-publish-to-html" into my .emacs.

  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                        ;  MS
(cond
 ((string-equal system-type "windows-nt")  ; MS
(setq org-publish-project-alist
      '(
        ("blog-notes"
;         :base-directory "~/org/blog/"
                                        ;         :base-directory  path-orgblog
         :base-directory  "D:/gitlib/orgblog"     
;         :base-directory  "D:/gitlib/orglib/orgblog"     
         :base-extension "org"
;         :publishing-directory "~/org/dayigu.github.com/"
         :publishing-directory "D:/weblib"
;         :publishing-directory "/ssh:xiaoanh@github.com: D:/gitlib/orglib/xiaoanh.github.io"
         :recursive t
                                        ;         :publishing-function org-publish-org-to-html
         :publishing-function org-html-publish-to-html   
         :headline-levels 4
         :section-numbers nil
         :auto-preamble t
         :auto-sitemap t                ; Generate sitemap.org automagically...
         :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
         :author "xiaoanh"
;         :email "dayigu at gmail dot com"
                                        ;          :style    "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/worg.css\"/>"
         :sitemap-sort-files anti-chronologically
         :sitemap-file-entry-format "%d %t"
         )
        ("blog-static"
;         :base-directory "~/org/blog/"
         :base-directory "D:/gitlib/orgblog"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
                                        ;         :publishing-directory "~/org/dayigu.github.com/"
;         :publishing-directory "/ssh:xiaoanh@github.com:  D:/gitlib/orglib/xiaoanh.github.io"
         :publishing-directory "D:/weblib"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog" :components ("blog-notes" "blog-static"))
        ;;
        ))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Mac OS X
(cond
 ((string-equal system-type "darwin")  ; Mac OS X
(setq org-publish-project-alist
      '(
        ("blog-notes"
;         :base-directory "~/org/blog/"
                                        ;         :base-directory  path-orgblog
         :base-directory  "/Volumes/xiaoanh/gitlib/orgblog"     
;         :base-directory  "/Volumes/xiaoanh/gitlib/orglib/orgblog"     
         :base-extension "org"
;         :publishing-directory "/ssh:xiaoanh@github.com: /Volumes/xiaoanh/gitlib/orglib/xiaoanh.github.io"
         :publishing-directory "/Volumes/xiaoanh/weblib"
;         :publishing-directory "/Volumes/xiaoanh/gitlib/orglib/xiaoanh.github.io"        
;         :publishing-directory "/ssh:xiaoanh@github.com: D:/gitlib/orglib/orghtml"
         :recursive t
                                        ;         :publishing-function org-publish-org-to-html
         :publishing-function org-html-publish-to-html   
         :headline-levels 4
         :section-numbers nil
         :auto-preamble t
         :auto-sitemap t                ; Generate sitemap.org automagically...
         :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
         :author "xiaoanh"
;         :email "dayigu at gmail dot com"
         :style    "<link rel=\"stylesheet\" type=\"text/css\" href=\"css/worg.css\"/>"
         )
        ("blog-static"
;         :base-directory "~/org/blog/"
         :base-directory "/Volumes/xiaoanh/gitlib/orgblog"
;         :base-directory "/Volumes/xiaoanh/gitlib/orglib/orgblog"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
                                        ;         :publishing-directory "~/org/dayigu.github.com/"
;         :publishing-directory "/ssh:xiaoanh@github.com:  /Volumes/xiaoanh/gitlib/orglib/xiaoanh.github.io"
         :publishing-directory "/Volumes/xiaoanh/weblib"
;         :publishing-directory "/Volumes/xiaoanh/gitlib/orglib/xiaoanh.github.io"        
;         :publishing-directory "D:/gitlib/orglib/xiaoanh.github.io"        
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog" :components ("blog-notes" "blog-static"))
        ;;
        ))))
                                        ; M-x org-publish-project RET blog RET
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; MD, [2015-02-13]
  (add-to-list 'load-path  (concat path-to "markdown-mode/"))  
;  (add-to-list 'load-path  path-to)  
  (autoload 'markdown-mode "markdown-mode"   "Major mode for editing Markdown files" t)
  (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; @ln : http://orgmode.org/worg/org-gtd-etc.html, [2016-01-12]
                                        ; Activate the org-timer module :
(add-to-list 'org-modules 'org-timer)
; Set a default value for the timer, for example :
(setq org-timer-default-timer 25)
;; Modify the org-clock-in so that a timer is started with the default
;; value except if a timer is already started :
(add-hook 'org-clock-in-hook (lambda ()
      (if (not org-timer-current-timer) 
      (org-timer-set-timer '(16)))))

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
(require 'org-eldoc)
(org-eldoc-load)
; (org-eldoc-hook-setup)
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
;; Auctex, REDO [2016-01-07] DONE [2014-10-23]
(add-to-list 'load-path (concat path-to "site-lisp/site-start.d"))
                                        ; @key: very important, [2014-10-23]
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)
(setq preview-scale-function 1.3)
(setq LaTeX-math-menu-unicode t)
(setq TeX-insert-braces nil)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
;; RefTeX with AUCTeX
;; reftex, [2014-10-23]
(setq reftex-plug-into-auctex t)
(add-hook 'latex-mode-hook 'turn-on-reftex) 
(setq reftex-cite-format 'natbib) 


;; "XeLaTeX", xetex, REDO [2016-01-07], DONE  [2014-11-03]
(setq TeX-PDF-mode t) ; annual, c-c,c-t, c -p, /140318
(add-hook 'LaTeX-mode-hook (lambda()
                              (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
                              (setq TeX-command-default "XeLaTeX")
                                 (setq TeX-save-query  nil )
                                  (setq TeX-show-compilation t) 
                                                               ))
(setq tex-engine 'xetex)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path path-to)
(require 'session)
;; load session
(add-hook 'after-init-hook 'session-initialize) 
;;  initiate session
(desktop-save-mode 1)

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
          (?f . "[[figs:%l][%l-fig]]")
          (?t . "%t")
          (?h . "** %t\n:PROPERTIES:\n:Custom_ID: %l\n:END:\n[[papers:%l][%l-paper]]"))))))
  (define-key global-map (kbd "C-c )") 'reftex-citation)
  (define-key global-map (kbd "C-c (") 'org-mode-reftex-search)
;  (define-key org-mode-map (kbd "C-c )") 'reftex-citation) ; @success, list [2015-12-30]
    ;; binding of  ”C-c (” to org-mode-reftex-search
;  (define-key org-mode-map (kbd "C-c (") 'org-mode-reftex-search)
  (add-hook 'org-mode-hook 'org-mode-reftex-setup)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
