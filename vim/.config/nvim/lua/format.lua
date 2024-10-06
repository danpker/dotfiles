-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  -- Enable or disable logging
  logging = true,
  -- Set the log level
  log_level = vim.log.levels.WARN,
  -- All formatter configurations are opt-in
  filetype = {

    elixir = {
      require("formatter.filetypes.elixir").mixformat
    },

    python = {
      require("formatter.filetypes.python").black,
      require("formatter.filetypes.python").isort
    },

    -- Use the special "*" filetype for defining formatter configurations on
    -- any filetype
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
}
