require('lint').linters_by_ft = {
  python = {'flake8',}
}

vim.cmd([[ au BufEnter,BufReadPost,BufWritePost,InsertLeave * lua require('lint').try_lint() ]])
