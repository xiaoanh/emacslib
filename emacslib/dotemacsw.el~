
;; ** @emacs @org [2015-12-23]
;; *** D:/GTD18 -> D:\gitlib\orglib [2015-12-23]
;; ***** @err, check position ctrl-x =
;; @err org-agenda-files, can't use concat

;; @err Reading at buffer position 25403
;;    ("notes" . (concat git-to "notes.org::%s") )
;; ;   ("notes" . "(concat git-to "notes.org") ::%s")
;; ;  (invalid-read-syntax ". in wrong context")

;; ** @git
;; *** @github, note1411 -> gitlib
;; dotemacs, can't push from hp ProBook 6470b

;; *** @bitbucket, 8x1 -> xiaoanh, can be changed, [2015-12-23]
;; xiaoanhuang@163.com
;; https://xiaoanh@bitbucket.org/xiaoanh/gitlib.git
;; @bitbucket, 8x1 to xiaoanh
;; @repo: git1412 to gitlib
;; **** @err fatal remote origin already exists
;; @success: -> git remote rm origin


; ** @dotemacs @debug
; *** @debug, eshell-> /emacs --debug-init/
; Debugger entered--Lisp error: (wrong-type-argument sequencep t)
;    (autoload 'predictive-mode (concat path-to "predictive/") "Turn on Predictive Completion Mode." t)
;    (autoload 'predictive-mode (concat path-to "predictive/" "Turn on Predictive Completion Mode." t))
;   concat("D:/dotemacsw/" "predictive/" "Turn on Predictive Completion Mode." t)
;   (autoload (quote predictive-mode) (concat path-to "predictive/" "Turn on Predictive Completion Mode." t))

; ** @lisp, @emacs @key [2015-12-21]
; *** @ac
; *** @org
; *** @org-doing
; *** @smex
; *** @org-ac
; *** @elfeed
; *** @helm-bibtex [2015-12-22]
; *** @aspell, installed in windows, but not work well  [2015-12-22]

;; @emacs
; http://dotemacs.de/

; ** @sachac, sachachua, shanchahua to remember [2015-12-22]
; https://github.com/sachac/emacs-notes
; ** @redguardtoo (chen bin)

; Time-stamp: "xiaoanh 2015/12/21 15:09:23"
; (eval-after-load "myvar" )
; Time-stamp: "xiaoanh 2015/12/08 16:43:17"

; @err, end of file during parsing, /20141113, [/( brace missing
; setq is set quoted, setf and set

; @cmd @win, /141107
;; CMD-->set
;;; %windir%, example set %windir% = C:\WINDOWS , 环境变量一般是包含在一对 "%" 号之间的，你可以在 CMD 下输入 "set" 来查看系统所有的环境变量，这里我说几个默认的而且非常常用的环境变量。

;(load-file "D:/Emacs14/dotemacs.el")

 ;; load-PATH MUST HAVE A COLON:, /131109
;; programs-->GNU EMacs-->open home directory-->.emacs-->(load-file "D:/Emacs14/dotemacs.el") ÕâÀïÒ»¶¨ÒªÐÞ¸Ä

;; change into doteamcsw,/141106
;; auto add PATH of miktex in the env var, miktex can work, no need to set in dotemacsw, /141106 
; original init-file: <2014-12-16> C:\Users\xiaoanh\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Gnu Emacs
;; USER-INIT-FILE, FOR DROPBOX, [2013-11-14]

; ** @mac @org  [2015-12-23]
; D:/GTD18 -> D:\gitlib\orglib [2015-12-23]
; (setq git-to "D:/gitlib/orglib/")
; (setq path-too "/Volumes/xiaoanh/gitlib/emacslib/") 
; replace " D:/GTD18 -> (concat git-to "
; ** @mac [2015-12-23]
; Emacs Lisp: Determine OS, Emacs Version, Machine Host Name
; http://ergoemacs.org/emacs/elisp_determine_OS_version.html
;; check OS type
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
;    (message "Microsoft Windows") ))
    (concat (message "Microsoft Windows: ") (setq path-to "D:/github/orglib/")) ) )
;    (message "Microsoft Windows") (setq path-to "D:/dotemacsw/")))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (concat (message "Mac OS X") (setq path-to "/Volumes/xiaoanh/gitlib/emacslib/"))) )
;    (message "Mac OS X") (setq path-to "~/Dropbox/emacslib/"))) 
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Linux"))))

(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
;    (message "Microsoft Windows") ))
    (concat (message "Microsoft Windows: ") (setq git-to "D:/github/orglib/")) ) )
;    (message "Microsoft Windows") (setq path-to "D:/dotemacsw/")))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (concat (message "Mac OS X") (setq git-to "/Volumes/xiaoanh/gitlib/orglib/"))) )
;    (message "Mac OS X") (setq path-to "~/Dropbox/emacslib/"))) 
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Linux"))))

; * @dotemacs, [2015-12-22]
; ** path-to, replace "D:/dotemacsw/ -> (concat path-to "
; (setq path-to "D:/dotemacsw/")
(setq user-init-file (concat path-to "dotemacsw.el") )
; (setq user-init-file "D:/dotemacsw/dotemacsw.el")
; user-init-file is a variable defined in `C source code'.
; Its value is "c:/Users/xiaoanh/AppData/Roaming/.emacs"

;; font. m-x just once, support CHN, /141104
(set-locale-environment "English")
; @key, DONE [2015-08-07]
(set-language-environment "utf-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Face set-faces, /141023
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "gray85" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Menlo")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

; org-mode lisp, re-install org-mode, [2015-07-07]
; M-S-!, emacs eshell, emacs -q
; (package-initialize nil)
; (add-to-list 'load-path "D:/Emacs14/org-mode-master/lisp/")
; (package-initialize t)
; (require 'org)
; (require 'org-install)
; (setq package-enable-at-startup nil)
; (require 'ox)
; Symbol's value as variable is void: org-list-allow-alphabetical
; cause: org-mode is obsolete
; can not load file org-macro
; (require 'ox-html)

;; linum forcefully, /131113
(add-to-list 'load-path path-to)  
; [2015-12-22]
; (add-to-list 'load-path "D:/dotemacsw")  ; /20141023
(require 'linum)
(global-linum-mode 1)

;; Ctex: C:\CTEX\MiKTeX\miktex\bin
;(setq path "C:\CTEX\MiKTeX\miktex\bin:")
;(setenv "PATH" path)
 
;;Auctex, /141023
(add-to-list 'load-path (concat path-to "site-lisp/site-start.d"))
(add-to-list 'load-path (concat path-to "site-lisp/site-start.d"))  ; very important, /20141023
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
;; reftex, /141023
(setq reftex-plug-into-auctex t)
(add-hook 'latex-mode-hook 'turn-on-reftex) 
(setq reftex-cite-format 'natbib) 
 ; cite-style, /141023


;; "XeLaTeX", xetex, /141103
;(setq TeX-PDF-mode t) ; annual, c-c,c-t, c -p, /140318
(add-hook 'LaTeX-mode-hook (lambda()
                              (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
                              (setq TeX-command-default "XeLaTeX")
                                 (setq TeX-save-query  nil )
                                  (setq TeX-show-compilation t) 
                                                               ))
(setq tex-engine 'xetex)

;;predictive, 141104
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


;; must require ac-ispell, error, /141104
;(add-to-list 'load-path "D:/Emacs14/auto-complete-master")
;(require 'ac-ispell)
;(eval-after-load "auto-complete" '(progn (ac-ispell-setup)))
;(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
;(add-hook 'mail-mode-hook 'ac-ispell-ac-setup)

;; ispell must installed in disk C, otherwise permission denied, /141106
;; ispell denied, must install aspell, error, 141105
;(add-to-list 'exec-path "D:/Aspell/bin/")
;(setq ispell-personal-dictionary "D:/Aspell/dict")
(if (string-equal system-type "windows-nt")
(progn (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin")))
; ** @emacs
; (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin")

(if (string-equal system-type "windows-nt")
(progn (setq ispell-personal-dictionary "C:/Program Files (x86)/Aspell/dict")))
; (setq ispell-personal-dictionary "C:/Program Files (x86)/Aspell/dict")
(setq-default ispell-program-name "aspell")
; /141110
; d:/Emacs14 $ which aspell
; c:/Program Files (x86)/Aspell/bin/aspell.exe
;(setq ispell-program-name "aspell")
(require 'ispell)
(setq text-mode-hook '(lambda()  (flyspell-mode t)  ) )
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
; (flyspell-mode 1)  /141126, add then error
(ispell-minor-mode) 
; (ispell-set-spellchecker-params)
 ; Initialize variables and dicts alists

;; auto-complete, /141106
(add-to-list 'load-path (concat path-to "auto-complete-master"))
; (add-to-list 'ac-dictionary-directories "D:/dotemacsw/auto-complete-master/ac-dict")
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories (concat path-to "auto-complete-master/ac-dict"))
(auto-complete-mode 1) 
; add, /141126
;; (add-to-list 'load-path "D:/dotemacsw/")
;; (require 'popup)

;; (add-to-list 'load-path "D:/dotemacsw/")
;; (require 'fuzzy)
;; (setq ac-fuzzy-enable t)
; 使用pos-tip模式 or popup (previous mac), /141112
; fuzzy, https://github.com/m2ym/fuzzy-el

;revise for win, /141106,  must put last, /140309

; 2.6 设置auto-complete的触发键, [[http://blog.csdn.net/winterttr/article/details/7524336]]
; (setq ac-auto-start nil)              ;auto complete using clang is CPU sensitive
; (ac-set-trigger-key "<C-return>")
; (ac-set-trigger-key "<M-return>")
; (ac-set-trigger-key "<S-return>")
; ALT INTO M-return, /141112

; auto-complete, /141118
; (global-set-key "\C-cp" 'auto-complete) 
; (global-set-key (kbd "M-/") 'auto-complete)  
;; 补全的快捷键，用于需要提前补全
; 如何修改Win7默认的快捷键: http://www.qi9.cn/html/739_1704.html
; emacs中使用auto-complete的详细设置 http://blog.csdn.net/winterttr/article/details/7524336
; M-tab into M-/, Esc-tab, /141124
;; (setq ac-auto-start nil)              ;auto complete using clang is CPU sensitive
;; (ac-set-trigger-key "<M-/>")

;; must require ac-ispell, /140309, must not use, then success /140309 
; (add-to-list 'load-path "D:/dotemacsw/auto-complete-master/ac-ispell.el")
; delete ac-ispell.el, / [2014-11-12]


(add-to-list 'load-path (concat path-to "auto-complete-master/"))
; (add-to-list 'load-path "D:/dotemacsw/auto-complete-master/")
(require 'ac-ispell)
(eval-after-load "auto-complete" '(progn (ac-ispell-setup)))
(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
(add-hook 'mail-mode-hook 'ac-ispell-ac-setup)

; error enabling flyspell mode, ispell-set-spellcheker, /141106
(setq flyspell-issue-welcome-flag nil)
;; fix flyspell problem

;; ** @git-emac git-emacs, [2015-12-23] / [2014-11-06]
; *** C:\Program Files (x86)\Git [2015-12-23]
(add-to-list 'load-path (concat path-to "git-emacs-master/"))
;(add-to-list 'load-path "C:/git-emacs-master")
;(add-to-list 'load-path "C:/Program Files (x86)/git-emacs-master")
(if (string-equal system-type "windows-nt")
(progn (add-to-list 'exec-path "C:/Program Files (x86)/Git/bin")))
; * @emacs
; (add-to-list 'exec-path "C:/Program Files (x86)/Git/bin")
(require 'git-emacs)
; @key, @success, 'exec-path, ctrl-h v check value
; permisson denied, git
; add its path (location) to the value of exec-path.

; ** @git-emacs, defvar, ctrl-h v: git--repository-dir for git-init
(setq git--repository-dir git-to)

;; 高亮当前行：hi-line.el,emacs自己带的, /[2014-11-06]
; (require 'hl-line)  
; (global-hl-line-mode t) 

; time-stamp, /141106
(add-hook 'write-file-hooks 'time-stamp)
(setq time-stamp-format "%:u %04y/%02m/%02d %02H:%02M:%02S")

;; @mew, email, @success, work [2015-12-21]
    ;;装载Mew, /141107
    (add-to-list 'load-path (concat path-to "mew-lisp"))
    (autoload 'mew "mew" nil t)
    (autoload 'mew-send "mew" nil t)
    (setq mew-icon-directory (concat path-to "mew-lisp/etc"))
    (setq mew-use-cached-passwd t)
    (if (boundp 'read-mail-command)
    (setq read-mail-command 'mew))
    (autoload 'mew-user-agent-compose "mew" nil t)
    (if (boundp 'mail-user-agent)
    (setq mail-user-agent 'mew-user-agent))
    (if (fboundp 'define-mail-user-agent)
    (define-mail-user-agent
    'mew-user-agent
    'mew-user-agent-compose
    'mew-draft-send-message
    'mew-draft-kill
    'mew-send-hook))
    (setq mew-pop-size 0)
    (setq mew-smtp-auth-list nil)
    (setq toolbar-mail-reader 'Mew)
    (set-default 'mew-decode-quoted 't)
    (when (boundp 'utf-translate-cjk)
    (setq utf-translate-cjk t)
    (custom-set-variables
    '(utf-translate-cjk t)))
    (if (fboundp 'utf-translate-cjk-mode)
    (utf-translate-cjk-mode 1))
   ; (require 'mew-w3m) ;需要w3m支持，看html邮件
    (setq mew-config-alist '(
    ("default"
    ("name" . "xiaoanhuang")
    ("user" . "xiaoanhuang")
    ("smtp-server" . "smtp.163.com")
    ("smtp-port" . "25")
    ("pop-server" . "pop3.163.com")
    ("pop-port" . "110")
    ("smtp-user" . "xiaoanhuang")
    ("pop-user" . "xiaoanhuang")
    ("mail-domain" . "163.com")
    ("mailbox-type" . pop)
    ("pop-auth" . pass)
    ("smtp-auth-list" . ("PLAIN" "LOGIN" "CRAM-MD5"))
    )
    ))
    (setq mew-ssl-verify-level 0)


; emacs 自带的 bs.el 更好用, cool, /141107
; http://blog.csdn.net/ruglcc/article/details/7826604
(global-set-key "\C-x\C-b" 'bs-show) 
   ;; or another key
(global-set-key "\M-p"  'bs-cycle-previous)
(global-set-key "\M-n"  'bs-cycle-next)

; session to recover last  butter. /141107
; (require 'session) 
;;加载session
; (add-hook 'after-init-hook 'session-initialize) 

;; 启动时初始化session
(desktop-save-mode 1)
; Java有生成文档的javadoc，C++的话，就要用Doxygen了。
;; 语法高亮, /141107
(global-font-lock-mode t)

; :Enabling Flyspell mode gave an error  (ispell-set-spellchecker-params)
; /141110

; /141113,  emacs中如何设置自动换行的功能, 1、M－x：customize-option；2、输入truncate-partial-width-windows，使用过程中为防止命令拼写错误，可以用Tab键补齐；3、将设置页面中的参数改为off，然后点击保存按钮（save for furture sessions），再点击finish按钮。

; (require 'tramp)
; (setq tramp-default-method "plink")

; comment-region, nice /141117.
(global-set-key (kbd "C-c C-/") 'comment-region)
(global-set-key (kbd "C-c C-/") 'uncomment-region)
(global-set-key [?\C-c ?\C-/] 'comment-or-uncomment-region)

; (setq org-completion-use-iswitchb t)
;  c-h v iswitchb-mode，然后点 customize 就行了。
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

; org-capture, / [2014-11-27]
(setq org-capture-templates '(
("t" "Task" entry (file+headline (concat git-to "task.org") "Tasks") "* TODO %?\n %i\n %a")
("j" "Journal" entry (file+datetree (concat git-to "journal.org")) "* %?\nEntered on %U\n %i\n %a")
("n" "Note" entry (file+datetree (concat git-to "note.org") ) "* %?\nEntered on %U\n %i\n %a")
("p" "Project" entry (file+datetree (concat git-to "project.org") ) "* %?\nEntered on %U\n %i\n %a")
))

; set org-remember, /141119
(define-key global-map "\C-cr" 'org-remember)

; (org-remember-insinuate)
; must add remember-mode-hook, /141119
  (setq remember-annotation-functions '(org-remember-annotation))
  (setq remember-handler-functions '(org-remember-handler))
  (add-hook 'remember-mode-hook 'org-remember-apply-template)

(setq org-directory git-to) 
; (setq org-directory (concat git-to "/") 
(setq org-remember-templates '(("New" ?n "* %? %t \n %i\n %a" (concat git-to "inbox.org") ) ("Task" ?t "** TODO %?\n %i\n %a" (concat git-to "task.org") "Tasks") ("Calendar" ?c "** TODO %?\n %i\n %a" (concat git-to "task.org") "Tasks") ("Idea" ?i "** %?\n %i\n %a" (concat git-to "task.org") "Ideas") ("Note" ?r "* %?\n %i\n %a" (concat git-to "note.org") ) ("Project" ?p "** %?\n %i\n %a" (concat git-to "project.org") %g)  ("Journal" ?j "* %?\n %i\n %a" (concat git-to "journal.org") )  )) 
(setq org-default-notes-file (concat org-directory "inbox.org"))


; set org-remember, /141118
; (org-remember-insinuate)
; (setq org-directory "D:/GTD18/") 
; (setq org-default-notes-file (concat org-directory "inbox.org"))
; (setq org-default-notes-file "D:/GTD18/.notes")
;  (setq org-directory "D:/GTD18/inbox.org")

;; (autoload 'remember "remember" nil t)
;; (autoload 'remember-region "remember" nil t)
;; (setq org-reverse-note-order t)
;; (when (file-exists-p "D:/GTD18/")
;;   (define-key global-map [(f9)] 'org-remember)
;;   (setq remember-annotation-functions '(org-remember-annotation))
;;   (setq remember-handler-functions '(org-remember-handler))
;;   (add-hook 'remember-mode-hook 'org-remember-apply-template)
;;  (setq org-directory "D:/GTD18/inbox.org")
;; ; '(org-agenda-files (quote ("d:/Chapters1411/JOB141110.org" "d:/Chapters1411/DOCSIS.org" "d:/Chapters1411/EMACS141110.org")))
;;  '(org-agenda-files nil)
;;   (setq org-remember-templates
;;         '((?t "* TODO %?\n  %i", (expand-file-name "todo.org" org-directory) "Tasks")
;;           (?m "* %U\n\n  %?%i\n  %a", (expand-file-name "notes.org" org-directory) "Notes")))
;;   (let ((todo (expand-file-name "todo.org" org-directory)))
;;     (when (file-exists-p todo)
;;       (add-to-list 'org-agenda-files todo)))

;; org-mode 导出Beamer的设置, /141114
;; beamer class, for presentations
;; (setq org-export-latex-classes nil)
;; (add-to-list 'org-export-latex-classes 
;; 	     '("beamer"
;; 	       \documentclass{beamer}
;; 	       \mode
;; 	       \usetheme{{{{Warsaw}}}}
;; 	       \beamertemplateballitem
;; 	       \setbeameroption{show notes}
;; 	       \usepackage{graphicx}
;; 	       \usepackage{lmodern}
;; 	       \hypersetup{colorlinks=true,linkcolor=blue,urlcolor=blue}
;; 	       ;\mode<beamer>{\usetheme{Boadilla}}
;; 	       ;\AtBeginSection[]{\begin{frame}<beamer>\frametitle{Topic}\tableofcontents[currentsection]\end{frame}}  
;; ) )


 ;; VERY CAREFUL, m-x customize-variable, /141118, custom-set-variables was added by Custom.
; C:\Users\xiaoanh\AppData\Roaming\.notes
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(elfeed-db-directory (concat path-to "elfeed_db"))
 '(elfeed-feeds (quote ("youtube.com" "http://nullprogram.com/feed/" "http://www.terminally-incoherent.com/blog/feed/")))
  '(org-agenda-files (quote ("d:/gitlib/orglib/HXA_Report.org" "d:/gitlib/orglib/paper.org" "d:/gitlib/orglib/study.org" "d:/gitlib/orglib/journal.org" "d:/gitlib/orglib/project.org" "d:/gitlib/orglib/task.org" "d:/gitlib/orglib/note.org")))
;  '(org-agenda-files (quote ( (concat path-to "HXA_Report.org") (concat path-to "paper.org" ) (concat path-to "study.org") (concat path-to "journal.org") (concat path-to "project.org") (concat path-to "task.org") (concat path-to "note.org"))))
; '(org-agenda-files (quote ("d:/GTD18/HXA_Report.org" "d:/GTD18/paper.org" "d:/GTD18/study.org" "d:/GTD18/journal.org" "d:/GTD18/project.org" "d:/GTD18/task.org" "d:/GTD18/note.org")))
 '(org-capture-templates (quote (("t" "Task" entry (file+headline (concat git-to "task.org") "Tasks") "* TODO %?
 %i
 %a") ("j" "Journal" entry (file+datetree (concat git-to "journal.org")) "* %?
Entered on %U
 %i
 %a") ("n" "Note" entry (file+datetree (concat git-to "note.org")) "* %?
Entered on %U
 %i
 %a") ("p" "Project" entry (file+datetree (concat git-to "project.org")) "* %?
Entered on %U
 %i
 %a"))) t)
 '(org-mobile-directory "D:/mobile-org/")
 '(session-use-package t nil (session))
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(truncate-partial-width-windows nil)
 '(user-full-name "xiaoanh")
 '(user-mail-address "xiaoanhuang@163.com"))
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

; mobile-org, [2014-12-16]
; (setq org-mobile-directory "D:/GTD18/mobile-org/")
(setq org-mobile-files (quote ( (concat git-to "HXA.OFDM.PON.org")  (concat git-to "journal.org")  (concat git-to "project.org")  (concat git-to "task.org")  (concat git-to "note.org") )))
; (setq org-mobile-index-file "D:/GTD18/inbox.org")
; (setq org-mobile-index-file "inbox.org")
; (setq org-mobile-inbox-for-pull "D:/GTD18/fromMobile.org")
; (setq org-mobile-inbox-for-pull "D:/GTD18/inbox.org")
; no executable found to compute checksums
;; (defcustom org-mobile-checksum-binary (or (executable-find "shasum")
;;                                          (executable-find "sha1sum")
;;                                          (executable-find "md5sum")
;;                                          (executable-find "md5"))
;;  "Executable used for computing checksums of agenda files."
;;  :group 'org-mobile
;;  :type 'string)
; org-mobile-checksum-binary: nil
;  Basically the checksums.dat file only contains the checksums for index.org, mobileorg.org and agendas.org.
; mobileorg - "No executable found to compute checksums": -http://comments.gmane.org/gmane.emacs.orgmode/26838


; todo, tag, pre-setting
; org-mode 使用: URL: http://blog.sina.com.cn/s/blog_818b48820101pmmu.html
; 关键词后括号内的字母为快捷选择键，当使用 C-c C-t 设置或改变当前标题的TODO状态或类型时将出现选项菜单，此时可以用快捷键进行选择。
;  "Study(s!)" "Fun(f!)" delete, <2015-01-16>
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

(setq org-tag-alist '(("@Fit" . ?f) ("@huang" . ?h) ("@home" . ?m) ("@Lang" . ?l) ("@Basic" . ?b) ("@Emacs" . ?e) ("@paper" . ?p) ("@work" . ?w)   ("@DOCSIS" . ?d) ("@Meeting" . ?M) ("@Famous" .?F)))

;; priority setting, /141119 优先级范围和默认任务的优先级
; lowest can not be D, must E, /141119
(setq org-highest-priority ?A)
(setq org-lowest-priority  ?E)
(setq org-default-priority ?E)
;; 优先级醒目外观
(setq org-priority-faces
  '((?A . (:background "red" :foreground "white" :weight bold))
    (?B . (:background "DarkOrange" :foreground "white" :weight bold))
    (?C . (:background "yellow" :foreground "DarkGreen" :weight bold))
    (?D . (:background "DodgerBlue" :foreground "black" :weight bold))
    (?E . (:background "SkyBlue" :foreground "black" :weight bold))
))


; auto-save, /141121
(setq auto-save-default t)


;yas install, /141125
(add-to-list 'load-path (concat path-to "yasnippet-master/"))
(require 'yasnippet)
; (setq yas/prompt-functions '(yas/dropdown-prompt yas/x-prompt yas/completing-prompt yas/ido-prompt yas/no-prompt))
; 以minor mode打开，这样才能配合主mode使用
; yas, snippet, /141125
; (yas/initialize)
; (add-to-list 'yas/root-directory (concat path-to "yasnippet-master/snippets/"))
;; default TAB key is occupied by auto-complete
; (global-set-key (kbd "C-c e") 'yas/expand)

;; default hotkey `C-c & C-s` is still valid
; (global-set-key (kbd "C-c ; s") 'yas/insert-snippet)
; (yas/global-mode 1)
;(yas/minor-mode-on) 


; ORG-capture, /141126
; M-x org-capture-import-remember-templates RET
; (setq org-directory "D:/GTD18/") 
(setq org-default-notes-file (concat org-directory "inbox.org"))
; (define-key global-map "\C-cc" ’org-capture)


; yas for beamer, http://alpha-blog.wanglianghome.org/2012/06/13/org-beamer-tricks/


; Epresent <2014-12-10>
; Debugger entered--Lisp error: (file-error "Cannot open load file" "ox")  require(ox)
(add-to-list 'load-path (concat path-to "epresent-master"))
; (require 'epresent)
; epresent and reveal fail, due to ox missing and latest org-mode 8.0, [2015-07-07]

; replace epresent with org-present, [2015-07-06]
(autoload 'org-present "org-present" nil t)
(eval-after-load "org-present"
  '(progn
     (add-hook 'org-present-mode-hook
               (lambda ()
                 (org-present-big)
                 (org-display-inline-images)
                 (org-present-hide-cursor)
                 (org-present-read-only)))
     (add-hook 'org-present-mode-quit-hook
               (lambda ()
                 (org-present-small)
                 (org-remove-inline-images)
                 (org-present-show-cursor)
                 (org-present-read-write)))))

; org-presie, https://github.com/nicferrier/org-presie
; (require 'org-presie)
; can not load file eimp
; fail: permission denied: mogrify



; org-mode reveal, [2015-07-07]
; (add-to-list 'load-path "D:/dotemacsw/org-reveal-master")
; (require 'ox-reveal)

; can not open ox-html
; https://github.com/yyr/org-mode/tree/master/lisp

(put 'erase-buffer 'disabled nil)

(org-babel-do-load-languages
    'org-babel-load-languages '((python . t) (R . t)))

; ditaa, [2015-07-02]
; (setq org-ditaa-jar-path “~/.emacs.d/plugins/ditaa/ditaa0_9.jar”) 
;(setq org-plantuml-jar-path “~/java/plantuml.jar”)
; (add-hook ‘org-babel-after-execute-hook ‘org-display-inline-images ‘append)
; (org-babel-do-load-languages 'org-babel-load-languages '((ditaa . t))) 
; this line activates ditaa
; can not find ditaa.jar can be found in contrib/scripts
; C:\Users\xiaoanh\Downloads\Emacs24.3\lisp

; ido, anything, <2014-12-24>
(require 'ido)
(ido-mode t)

 
; tabbar, speedbar, <2014-12-24>
; http://blog.csdn.net/CherylNatsu/article/details/6204737
; http://laokaddk.blog.51cto.com/368606/593613/
(add-to-list 'load-path  path-to)  
(require 'tabbar)
(tabbar-mode 1)
(global-set-key [(meta j)] 'tabbar-backward)  
(global-set-key [(meta k)] 'tabbar-forward)  
(global-set-key  [(meta g)]  'tabbar-backward-group)
(global-set-key  [(meta h)]  'tabbar-forward-group)
;(global-set-key (kbd "<M-left>") 'tabbar-backward)
;(global-set-key (kbd "<M-right>") 'tabbar-forward)

; https://github.com/alloy-d/color-theme-molokai
; I prefer Monokai from sublime text 2. 
; Debugger entered--Lisp error: (file-error "Cannot open load file" "color-theme")  
; then download color-theme.el, 
; symbol's function definition is void: plist-to-alist, 
; toggle-debug-on-error, <2015-01-26>


; define color theme 
;(load "D:/dotemacsw/color-theme-molokai.el")

(add-to-list 'load-path (concat path-to "themes"))
(require 'color-theme)
; (setq color-theme-is-global t)
; (color-theme-initialize)
; (color-theme-matrix)
; (color-theme-molokai)
; (color-theme-gnome2)

;; 语法高亮 <2015-01-26>
; (setq color-theme-is-global t)

; redo,<2015-01-16>
; http://www.wonderworks.com/download/redo.el
(add-to-list 'load-path  path-to)  
(require 'redo) 
(global-set-key ( kbd "C-.") 'redo)

; 进度记录 <2015-01-16>
(setq org-log-done 'time)
(setq org-log-done 'note)


; http://blog.waterlin.org/articles/bind-emacs-org-mode-with-bibtex.html
(setq reftex-default-bibliography
      (quote
       ("D:/bib1410/bib1307.bib" "D:/bib1410/bib1410.bib"  "D:/bib1410/bib1506.bib" "D:/bib1410/bib1505.bib" ))) 
; (define-key org-mode-map (kbd "C-c )") 'reftex-citation)
; repeat, [2015-01-30]

;; 利用 Emacs 的 org-mode 管理文献, <2015-01-27>
;; https://wiki.freebsdchina.org/doc/r/reference
;; 定义 org-mode-reftex-search
(defun org-mode-reftex-search ()
 ;; jump to the notes for the paper pointed to at from reftex search
 (interactive)
 (org-open-link-from-string (format "[[notes:%s]]" (reftex-citation t))))

(setq org-link-abbrev-alist
 '(("bib" . "D:/bib1410/bib1410.bib::%s, D:/bib1410/bib1505.bib::%s, D:/bib1410/bib1506.bib::%s")
   ("notes" . (concat git-to "notes.org::%s") )
;   ("notes" . "(concat git-to "notes.org") ::%s")
;  (invalid-read-syntax ". in wrong context")
;    ("notes" . (concat git-to "notes.org::%s")
   ("figs" . "D:/figure1411/%s.png")
   ("papers" . "D:/bib1410/paper1410/%s.pdf")))
