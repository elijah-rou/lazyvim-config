-- Custom iroaseta colorscheme (ported from Helix)
return {
  {
    "nvim-mini/mini.base16",
    lazy = false,
    priority = 1000,
    config = function()
      require("mini.base16").setup({
        palette = {
          base00 = "#0d1117", -- background
          base01 = "#161b22", -- lighter bg (status bar, line numbers)
          base02 = "#263c57", -- selection bg
          base03 = "#838a97", -- comments
          base04 = "#91a3b0", -- dark foreground
          base05 = "#f2f0eb", -- default foreground
          base06 = "#dadada", -- light foreground
          base07 = "#f2f0eb", -- lightest foreground
          base08 = "#fa7970", -- red (variables, errors)
          base09 = "#ff9000", -- orange (integers, constants)
          base0A = "#ffba00", -- yellow (classes, types)
          base0B = "#81be83", -- green (strings)
          base0C = "#45b1e8", -- cyan (support, escape chars)
          base0D = "#6eb0ff", -- blue (functions)
          base0E = "#d2a8ff", -- purple (keywords)
          base0F = "#987654", -- brown (deprecated, embedded)
        },
        use_cterm = true,
      })

      -- Additional highlight customizations
      vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#161b22" })
      vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#838a97", bg = "#161b22" })
      vim.api.nvim_set_hl(0, "CursorLine", { bg = "#161b22" })
      vim.api.nvim_set_hl(0, "Visual", { bg = "#263c57" })
      vim.api.nvim_set_hl(0, "Search", { fg = "#0d1117", bg = "#ffba00" })
      vim.api.nvim_set_hl(0, "IncSearch", { fg = "#0d1117", bg = "#ff9000" })
      vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#fa7970" })
      vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffba00" })
      vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#6eb0ff" })
      vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#81be83" })
      vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#81be83" })
      vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ffba00" })
      vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#fa7970" })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("mini.base16")
      end,
    },
  },
}
