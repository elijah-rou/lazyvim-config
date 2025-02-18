return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          terminal_colors = true,
          transparent = true,
          colorblind = {
            enable = false, -- Enable colorblind support
          },
          styles = {
            keywords = "bold",
          },
        },
      })
    end,
  },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- Ensure it loads first
  --   config = function()
  --     require("onedarkpro").setup({
  --       options = {
  --         transparency = true,
  --       },
  --     })
  --   end,
  -- },
  -- {
  --   "sainnhe/sonokai",
  --   priority = 1000, -- Ensure it loads first
  -- },
  -- { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "terafox",
    },
  },
}
