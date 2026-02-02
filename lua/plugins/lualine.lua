return {
  "nvim-lualine/lualine.nvim",
  opts = function()
    vim.o.laststatus = vim.g.lualine_laststatus

    local opts = {
      options = {
        theme = "carbonfox",
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
      },
      section_separators = "",
      component_separators = "",
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },

        lualine_c = {
          {
            "diagnostics",
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = " ",
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          "filename",
        },
        lualine_x = {
          {
            function()
              return Snacks.profiler.status()
            end,
            cond = function()
              return package.loaded["snacks"] and Snacks.profiler and Snacks.profiler.status
            end,
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.command end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command end,
            color = function() return { fg = Snacks.util.color("Statement") } end,
          },
          -- stylua: ignore
          {
            function() return require("noice").api.status.mode end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.mode end,
            color = function() return { fg = Snacks.util.color("Constant") } end,
          },
          -- stylua: ignore
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = function() return { fg = Snacks.util.color("Special") } end,
          },
          {
            "diff",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            },
            source = function()
              local gitsigns = vim.b.gitsigns_status_dict
              if gitsigns then
                return {
                  added = gitsigns.added,
                  modified = gitsigns.changed,
                  removed = gitsigns.removed,
                }
              end
            end,
          },
        },
        lualine_y = {},
        lualine_z = {
          { "location", padding = { left = 0, right = 1 } },
        },
      },
      extensions = { "neo-tree", "lazy", "fzf" },
    }
    return opts
  end,
}
