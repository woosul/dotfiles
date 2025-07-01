return {
  "jim-at-jibba/micropython.nvim",
  dependencies = {
    "akinsho/toggleterm.nvim",
    "stevearc/dressing.nvim",
  },
  config = function()
    -- Optional: Only needed if you want to customize Dressing
    require("dressing").setup({})

    -- Toggleterm setup
    require("toggleterm").setup({
      open_mapping = [[<leader>mt]],
      hide_numbers = true,
      direction = "float",
      size = 20,
    })
    -- Just import the module, no setup() call
    local mp = require("micropython_nvim")

    ---- Lua
    vim.keymap.set("n", "<leader>mr", mp.run, { desc = " Run MicroPython code"})
    vim.keymap.set("n", "<leader>ml", mp.repl, { desc = " Remote control mode"})
    vim.keymap.set("n", "<leader>mn", mp.init, { desc = " Project initializing"})
    vim.keymap.set("n", "<leader>mu", mp.upload_current, { desc = " Upload current file to board"})
    vim.keymap.set("n", "<leader>ma", mp.upload_all, { desc = " Upload file all to board"})
    vim.keymap.set("n", "<leader>me", mp.erase_all, { desc = " Erase file all on remote board"})
    vim.keymap.set("n", "<leader>mo", mp.erase_one, { desc = " Erase file one remote board"})
  end,
  -- :MPRun runs current buffer on the micro-controller
  -- :MPSetPort sets the port, in both the .ampy configuration file and Neovim global variable
  -- :MPSetBaud sets the baudrate in the .ampy configuration file and Neovim global variable
  -- :MPSetStubs sets the stubs for the board in requirments.txt ready for installation
  -- :MPRepl opens the REPL
  -- :MPInit initalizes the project with basic settings and files. See project setup
  -- :MPUpload uploads the current buffer to the micro-controller
  -- :MPEraseOne deletes single file or folder from device.
  -- :MPUploadAll uploads all files in the project. This command also accepts file or folder names to ignore i.e :MPUploadAll test.py unused and auto ignores the following files. Currently, you can not ignore files that are not in the root directory.
}
