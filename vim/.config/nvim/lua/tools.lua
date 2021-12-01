local api = vim.api
local M = {}

function M.makeScratch()
    api.nvim_command("enew") -- same as :enew
    vim.bo[0].buftpe = nofile -- set current buffer to bofile
    vim.bo[0].bufhidden = hide
    vim.bo[0].swapfile = false
end

return M
