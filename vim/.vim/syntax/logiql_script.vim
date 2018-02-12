"" Language: LogiQL Scripts (Datalog LB)
"" Vim Highlighting: http://vimdoc.sourceforge.net/htmldoc/syntax.html

if exists("b:current_syntax")
	finish
endif

syn clear


:runtime! syntax/logiql.vim
:unlet b:current_syntax


syn match lbScriptCommand /create\|open\|close\|addblock\|exec\(block\)\?\|echo\|print\|popcount\|transaction\|commit\|abort\|starttimer\|elapsedtime/
syn match lbScriptCommandArgs /--overwrite\|--unique\|--destroy\|--csv\|--print\|--file\|--name\|--block\|--inactive\|-p/
syn match lbScriptBlockDelim @<\(/\)\?doc>@
syn region lbScriptBlock start=@<doc>@ end=@</doc>@ keepend contains=ALLBUT,lbScriptCommand,lbScriptCommandArgs

hi link lbScriptCommand Type
hi link lbScriptCommandArgs Special
hi link lbScriptBlockDelim Identifier


"" Set the current syntax name
let b:current_syntax = "logiql_script" 
