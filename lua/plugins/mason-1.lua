-- Mason configuration
-- Let LazyVim manage versions to ensure compatibility
return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "shfmt",
      },
    },
  },
}
