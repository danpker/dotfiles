HOME = os.getenv("HOME")

local g = vim.g
local o = vim.o

g.mapleader = ","
g.python3_host_prog = HOME .. "/.pyenv/shims/python3"
o.colorcolumn = "80"
o.cursorline = true
o.expandtab = true
o.fillchars = "vert: ,stl: ,stlnc: "
o.hlsearch = true
o.incsearch = true
o.number = true
o.relativenumber = true
o.shiftwidth = 4
o.showcmd = true
o.showmatch = true
o.softtabstop = 4
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.wildmenu = true
