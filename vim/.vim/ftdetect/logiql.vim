" filetypes for DatalogLB files ending with .logic and .lb

" Place this file in ~/.vim/ftdetect

au BufRead,BufNewFile *.logic   setfiletype logiql

au BufRead,BufNewFile *.lb      setfiletype logiql_script
