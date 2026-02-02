-- Rustaceanvim config
-- Uses rust-analyzer with clippy for diagnostics
return {
  "mrcjkb/rustaceanvim",
  opts = {
    server = {
      default_settings = {
        ["rust-analyzer"] = {
          check = {
            command = "clippy",
          },
          cargo = {
            allFeatures = true,
          },
        },
      },
    },
  },
}
