return {
   {
      "nvim-lualine/lualine.nvim",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      opts = {
         options = {
            theme = "catppuccin",
            globalstatus = true,
         }
      },
      init = function()
         vim.opt.showmode = false
      end
   },
   {
      'akinsho/bufferline.nvim',
      version = "*",
      dependencies = 'nvim-tree/nvim-web-devicons',
      opts = {
         options = {
            numbers = "none",
            separator_style = "slant",
            mode = "tabs",
            always_show_bufferline = true,
            offsets = {
               {
                  filetype = "NvimTree",
                  text = "File Explorer",
                  highlight = "Directory",
                  separator = true
               }
            }
         }
      }
   },
   {
      "utilyre/barbecue.nvim",
      name = "barbecue",
      version = "*",
      dependencies = {
         "SmiteshP/nvim-navic",
         "nvim-tree/nvim-web-devicons",
      },
      opts = {
         show_dirname = false,
         show_basename = false
      },
   }
}
