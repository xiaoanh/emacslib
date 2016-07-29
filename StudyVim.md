// @github, sync, 2016-07-21
# @app
## @vimrc, 2016-07-27
### nmap、vmap、imap 和 cmap 等,分别适用于普通、可视、插入和命令行
### Learn Vimscript the Hard Way:, 2016-07-27
- @autocmd, a: and ... 
autocmd! BufWritePost $VIM/_vimrc source $VIM/_vimrc
autocmd! BufWritePost ~/.bashrc source ~/.bashrc

- http://learnvimscriptthehardway.stevelosh.com/chapters/24.html
function DisplayName(name)
	echom "Hello!  My name is:"
	echom a:name
endfunction
" Run the function:
" :call DisplayName("Your Name")
" with a: when you use them to tell Vim that they're in the argument scope.
function AssignGood(foo)
	let foo_tmp = a:foo
	let foo_tmp = "Yep"
	echom foo_tmp
endfunction
" :call AssignGood('test')"

function Varg(...)
  echom a:0
  echom a:1
  echo a:000
endfunction
" :call Varg("a", "b")
" ..., This is like a *args argument in a Python function."
" @ans: 2; a; ['a', 'b']"
" :call AssignGood("test")


## @key: [^,], [^\s], 2016-07-20, :e $VIM\_vimrc, :tab; star(#), %, {, v+=; cc, cw, :b+tab, :Explorer :bd, :file, :ls; gg/GG ; \<match\>;
- :set list, :e
- g(G) => Go   r(R) => Replace
- s(S) => Substitue  v(V) => Visual mode 
- 1,23s/#[^\s]/star/g
- CTRL+N is Next match and CTRL+P is Previous−match.
### 跟我一起学习VIM - The Life Changing Editor, 
- http://ju.outofmemory.cn/entry/79671

### vim入门进阶与折腾, http://blog.chinaunix.net/uid-24567872-id-3425929.html
1. To err is human. a Computer.
// xp,
1. oT err is human. a Computer.
//ddkP
3. To err is human. a computer.
//V2jxjp
1. To err is human. a computer.
2. To err is human. a computer.
3. To err is human. a computer.
#### *gv 重选上次选中的区域,谁用谁知道*
//'<,'>, //.,.+9, //{num}, {num2}
:[range] substitute/from/to/[flags] 替换文本
:[range] copy {num1} {num2} 复制文本
:[range] Tabluarize /{char1} 对齐文本
. 当前行,比如说,想要作用于从当前行开始的总共8行文本,则可以8:,
#### *进阶*
	[N] 执行N次
	d3w表示一次删除3个w,而3dw表示一次删除一个w,重复3次.
## @reg

	- 记录与回放命令, qx, q, 3@x,  
## @vim
	- http://rj.baidu.com/soft/detail/12314.html?ald
	- C:\Program Files (x86)\Vim\vim74\vim.exe
	-  .vimrc 是用户个人的vim配置文件
	- http://www.eandem.co.uk/mrw/vim/usr_doc/index.html
	- C:\Program Files (x86)\Vim, _vimrc
	- function, end function
	- http://mikzhang.iteye.com/blog/1980430
	- set encoding=utf-8
	- vundle: -> C:\Program Files (x86)\Vim\vimfiles\plugin
	- Vim使用经典的desert,而GVim则是网上被众多人推崇的solarized
	- Vim的插件管理利器pathogen
	- （总结）vim的查找和替换实用技巧, http://www.ha97.com/4975.html
	- @cmdStudyVim.md
	- :colortheme murphy
	- :set number
	- :set fdm
	- :syntax
	- :setf markdown
	- search, /, n and N 
### Vim-OrgMode
	- https://github.com/jceb/vim-orgmode

# study from tutorial
## @key:*26.3* Making a change in many files, :argdo, \<\>, match the whole, 2016-07-22
	- :args *.py
	- :argdo %s/\<2016-07\>/2016-7/ge/update 

##*05.6* The option window, TOhtml
	- :set list 
## REPLACING WITH ONE CHARACTER, 2016-07-19, <B> limited, /g is global
	- there is somerhing grong here ~
	- rT rt rw
	-  -> There is something wrong here ~
	- 5rx
	-  -> There is something xxxxx here ~, 

##*04.3* Repeating a change, To <B>generate</B> a table of <B>contents ~
	- *f<, df>*
	- To generate a table of contents ~
	- This is an examination sample of visual mode
StudyVim.md
## @cmd yanking, putting, y and p, r and f, %s and s, /g
	- 2016-07-19

## *12.2* Change "Last, First" to "First Last", Doe, John ~, %s /\([^,]*\) \(.*\)/\2 \1/
	- Doe, John ~, match anything but a Comma [^,]

# 两篇很牛的vim使用技巧,
	- http://linux.chinaunix.net/techdoc/desktop/2009/07/06/1122020.shtml
	- 12,23s/aa/bb/g 将从12行到23行中出现的所有包含 aa 的字符串中的 aa 替换为
	bb:
