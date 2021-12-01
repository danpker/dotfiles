function map(mode, shortcut, command)
  vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
  map('n', shortcut, command)
end

function imap(shortcut, command)
  map('i', shortcut, command)
end

function vmap(shortcut, command)
  map('v', shortcut, command)
end

function cmap(shortcut, command)
  map('c', shortcut, command)
end

function tmap(shortcut, command)
  map('t', shortcut, command)
end

nmap('<leader>.', ':noh<cr>:call clearmatches()<cr>')
nmap('<leader>m', '<cmd>Telescope live_grep<cr>')
nmap('<leader>k', '<cmd>Telescope find_files<cr>')
nmap('<leader>l', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
