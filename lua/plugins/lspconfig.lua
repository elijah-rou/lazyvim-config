return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = true,
    },
    codelens = {
      enabled = true,
    },
    servers = {
      gleam = {},
      gopls = {},
      zls = {
        settings = {
          zls = {
            enable_inlay_hints = true,
            inlay_hints_show_builtin = true,
            inlay_hints_exclude_single_argument = true,
            inlay_hints_hide_redundant_param_names = false,
            inlay_hints_hide_redundant_param_names_last_token = false,
          },
        },
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            cargo = {
              sysroot = "discover",
            },
            inlayHints = {
              typeHints = {
                enabled = true,
              },
              parameterHints = {
                enabled = true,
              },
              chainingHints = {
                enabled = true,
              },
              maxLength = 90,
            },
          },
        },
      },
    },
  },
}
