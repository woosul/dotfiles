return {
   -- "nvim-telescope/telescope.nvim", tag = "0.1.1",
   -- dependencies = { "nvim-lua/plenary.nvim" },

   "nvim-telescope/telescope.nvim", tag = "0.1.8",
   dependencies = { "nvim-lua/plenary.nvim" },

   init = function()
      -- local builtin = require("telescope.builtin")
      -- vim.keymap.set("n", "<Leader>ff", builtin.find_files, { noremap = true })
      -- vim.keymap.set("n", "<Leader>fb", builtin.buffers, { noremap = true })
      -- vim.keymap.set("n", "<Leader>fh", builtin.help_tags, { noremap = true })
      local builtin = require('telescope.builtin')
         vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
         vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
         vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
         vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      end
}
