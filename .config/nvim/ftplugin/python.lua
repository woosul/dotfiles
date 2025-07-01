-- ~/.config/nvim/ftplugin/python.lua (MicroPython-specific)

-- Only apply settings if we detect MicroPython project (main.py or boot.py present)
local function is_micropython_project()
  return vim.fn.filereadable "main.py" == 1 or vim.fn.filereadable "boot.py" == 1
end

if is_micropython_project() then
  -- Use 4 spaces, no tabs
  vim.bo.expandtab = true
  vim.bo.shiftwidth = 4
  vim.bo.tabstop = 4

  -- Disable formatters/linters that cause issues
  vim.g.disable_isort = true
  vim.g.disable_black = true
  -- vim.g.disable_autopep8 = true

  -- Disable format on save (local to this buffer)
  vim.b.format_on_save = false

  -- Optionally: Clear any existing format-on-save autocommands
  vim.api.nvim_clear_autocmds {
    buffer = 0,
    group = vim.api.nvim_create_augroup("LspFormatOnSave", { clear = false }),
  }
end
