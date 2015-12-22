 ;; load-PATH MUST HAVE A COLON:, /131109

;; * @emacs
;; ** path-to concat [2015-12-22
;; replace "~/Dropbox/emacslib/" -> (concat pathto " 
;; ** @err: Debugger entered--Lisp error: (invalid-read-syntax ")"), 2nd line forgot comment
; (autoload 'markdown-mode "markdown-mode"
;   "Major mode for editing Markdown files" t)

(setq path-to "~/Dropbox/emacslib/")

; * @emacs
; ** path-too concat ~/.emacs.d/ -> /Volumes/xiaoanh/emacslib/

(setq path-too "/Volumes/xiaoanh/gitlib/emacslib/")  

; (setq path-too "/Volumes/xiaoanh/emacslib/")  

 ;; USER-INIT-FILE, FOR DROPBOX, /131114
; (setq user-init-file "~/dropbox/emacslib/dotemacs.el")
(setq user-init-file (concat path-to  "dotemacs.el"))
(setq texlive-root "/usr/texbin:")
(setq path "/bin:/usr/bin:/usr/local/bin:/usr/bin:/usr/local/texlive/2013/bin/x86_64-darwin:/usr/local/cellar/ghostscript/9.07/bin:")
(setenv "PATH" path)  


;; keyboard, /131118
;; (setq mac-contrl-modifier 'ctrl)
(setq mac-command-modifier 'ctrl)
(define-key global-map [?\M-¥] "\\")
; full screen, /140310
;(set-frame-parameter nil 'fullscreen 'fullboth)

;; font. m-x just once, /131113
(set-language-environment "utf-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)


;; face set-faces, /131105
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "Black" :foreground "gray85" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "apple" :family "Menlo")))))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; linum forcefully, /131113
(add-to-list 'load-path path-to)
; (add-to-list 'load-path "~/dropbox/emacslib")  ; /140308
(require 'linum)
(global-linum-mode 1)

; package, /140309
 ;(add-to-list 'load-path "~/dropbox/emacslib/")
 ;(require 'package)


;; matlab support, dropbox, /131114
;; you don't need this line if you placed it in prelude/personal
(add-to-list 'load-path (concat path-to "matlab-emacs")) 
(load-library "matlab-load")
(require 'matlab)  
; require, /131113
;(matlab-cedet-setup)  ; eieio void function, /140317
(add-hook 'matlab-mode
          (lambda ()
            (auto-complete-mode 1) ))

;; ac, from emacs batch -l dir, info /140308

(add-to-list 'load-path (concat path-to "auto-complete-master"))
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories (concat path-to "auto-complete-master/ac-dict"))
 ;must put last, /140309


;; ispell, /140303
(setq ispell-program-name "/usr/local/bin/ispell")
(require 'ispell)
(setq-default ispell-program-name "/usr/local/bin/aspell")
 (setq text-mode-hook '(lambda()  (flyspell-mode t)  ))
(add-hook 'latex-mode-hook 'flyspell-mode)
(ispell-minor-mode) 

;; must require ac-ispell, /140309, must not use, then success /140309 
(add-to-list 'load-path (concat path-to "auto-complete-master"))
; (add-to-list 'load-path (concat path-to "auto-complete-master／ac-ispell.el"))
(require 'ac-ispell)
(eval-after-load "auto-complete" '(progn (ac-ispell-setup)))
(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
(add-hook 'mail-mode-hook 'ac-ispell-ac-setup)


; [2015-12-22]
;;predictive
  ;; predictive install location
     (add-to-list 'load-path (concat path-too "predictive/"))
     ;; dictionary locations
     (add-to-list 'load-path (concat path-too "predictive/latex/"))
;     (add-to-list 'load-path "~/.emacs.d/predictive/latex/")
     (add-to-list 'load-path (concat path-too "predictive/texinfo/"))
     (add-to-list 'load-path (concat path-too "predictive/html/"))
     ;; load predictive package
;     (require 'predictive)
(autoload 'predictive-mode (concat path-too "predictive/predictive")
               "Turn on Predictive Completion Mode." t)
;(add-hook 'find-file-hook 'predictive-mode) ; nice but very slow, /140317
;(add-hook 'LaTeX-mode-hook 'predictive-mode) ; only in latex, /140317 


;; latex, AUCTEX,  /131112

;(add-to-list 'load-path "~/.emacs.d/site-lisp/site-start.d")
(add-to-list 'load-path (concat path-too "elpa/auctex-11.87.3/")) 
; (add-to-list 'load-path "~/.emacs.d/elpa/auctex-11.87.3/")
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(require 'tex-site)
(require 'preview-latex)
;(add-to-list 'load-path "~/.emacs.d/site-lisp/auctex")
(setq preview-image-type 'dvipng)
;;
;; RefTeX with AUCTeX
;; reftex, /131125 
(setq reftex-plug-into-auctex t)
(add-hook 'latex-mode-hook 'turn-on-reftex) 
(setq reftex-cite-format 'natbib)  ; cite-style, /140411

; with auctex latex mode, /131129
 
;; "XeLaTeX", xetex, /131112
;(setq TeX-PDF-mode t) ; annual, c-c,c-t, c -p, /140318
(add-hook 'LaTeX-mode-hook (lambda()
                              (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
                              (setq TeX-command-default "XeLaTeX")
                                 (setq TeX-save-query  nil )
                                  (setq TeX-show-compilation t) 
                                                               ))
(setq tex-engine 'xetex)

; ** @git [2015-12-22]
; M-x git-config-init
; *** @err
; *** ~/.git and /Volumns/xiaoanh/.git and ~/Dropbox/emacslib/.git
; git config --local /Volumes/xiaoanh/.git
; error: invalid key: /Volumes/xiaoanh/.git
 
; git-commit -> work, git-status -> @err fatal: bad default revision 'HEAD'

; echo "# emacslib" >> README.md
; git init
; git add README.md
; git commit -m "first commit"
; git remote add origin https://github.com/xiaoanh/emacslib.git
; git push -u origin master

;; git-emacs, /141105
;(add-to-list 'load-path "/usr/bin/git")
(add-to-list 'load-path (concat path-too "git-emacs/"))
; (add-to-list 'load-path "~/git-emacs/")
(require 'git-emacs)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t))

;;打开上次的文件记录
;(load "desktop") 
;(desktop-load-default)
;(desktop-read)
;;当emacs退出时保存文件打开状态
;(add-hook 'kill-emacs-hook
 ;         '(lambda()(desktop-save "~/")))


; MD [2015-02-13]
; (add-to-list 'load-path "~/dropbox/emacslib/~/")
; (autoload 'markdown-mode "markdown-mode"
;   "Major mode for editing Markdown files" t)
; (add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
; (add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
; (add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


(add-to-list 'load-path (concat path-too "slime-master/"))
; (add-to-list 'load-path "/Volumes/xiaoanh/emacslib/slime-master/")
 ;; Set your lisp system and, optionally, some contribs
(require 'slime)
(slime-setup)
(require 'slime-autoloads)
; (setq inferior-lisp-program "/opt/sbcl/bin/sbcl")
; (setq slime-contribs '(slime-fancy))
; process inferior-lisp not running
; -> yum install sbcl


; ** @elfeed [2015-12-18], https://github.com/skeeto/elfeed
(add-to-list 'load-path (concat path-too "elfeed-master/"))
; (add-to-list 'load-path "/Volumes/xiaoanh/emacslib/elfeed-master/")
(require 'elfeed)
(global-set-key (kbd "C-x w") 'elfeed)
;; Somewhere in your .emacs file
(setq elfeed-feeds
      '("http://nullprogram.com/feed/"
        "http://www.terminally-incoherent.com/blog/feed/"
	"bbs.sjtu.edu.cn"
        ("http://nullprogram.com/feed/" blog emacs)
        "http://www.50ply.com/atom.xml"  ; no autotagging
        ("http://nedroid.com/feed/" webcomic)
))

;; Mark all YouTube entries
(add-hook 'elfeed-new-entry-hook
          (elfeed-make-tagger :feed-url "youtube\\.com"
                              :add '(video youtube)))
